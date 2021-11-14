function! s:setup_stack()
  if exists('b:kite_stack') | return | endif

  " stack:
  "  [
  "    { index: 0, placeholders: { ... } },    <-- depth 0
  "    { index: 0, placeholders: { ... } },    <-- depth 1
  "    ...                                     <-- depth n
  "  ]
  "
  "  index - the currently active placeholder at that depth
  let b:kite_stack = {'stack': []}

  function! b:kite_stack.pop()
    return remove(self.stack, -1)
  endfunction

  function! b:kite_stack.peek()
    return get(self.stack, -1)
  endfunction

  function! b:kite_stack.push(item)
    call add(self.stack, a:item)
  endfunction

  function! b:kite_stack.is_empty()
    return empty(self.stack)
  endfunction

  function! b:kite_stack.empty()
    let self.stack = []
  endfunction
endfunction


function! kite#snippet#complete_done()
  if empty(v:completed_item) | return | endif
  call s:setup_stack()

  if has_key(v:completed_item, 'user_data') && !empty(v:completed_item.user_data)
    let placeholders = json_decode(v:completed_item.user_data).placeholders
  elseif exists('b:kite_completions') && has_key(b:kite_completions, v:completed_item.word)
    let placeholders = json_decode(b:kite_completions[v:completed_item.word]).placeholders
    let b:kite_completions = {}
  else
    return
  endif

  " Send the edit event.  Normally this is sent automatically on TextChanged(I).
  " But for some reason this doesn't fire when a completion has a snippet placeholder.
  call kite#events#event('edit')

  if empty(placeholders)
    if b:kite_stack.is_empty()
      return
    else
      call kite#snippet#next_placeholder()
      return
    endif
  endif

  let b:kite_linenr = line('.')
  let b:kite_line_length = col('$')

  call s:setup_maps()
  call s:setup_autocmds()

  " Calculate column number (col_begin) of start of each placeholder, and placeholder length.
  let inserted_text = v:completed_item.word
  let insertion_start = col('.') - strdisplaywidth(inserted_text)
  let b:kite_insertion_end = col('.')

  for ph in placeholders
    let ph.col_begin = insertion_start + ph.begin
    let ph.length = ph.end - ph.begin
    unlet ph.begin ph.end
  endfor

  " Update placeholder locations.
  "
  " todo move this into the push() function?
  " note this is very similar to s:update_placeholder_locations()
  if !b:kite_stack.is_empty()
    " current placeholder which has just been completed
    let level = b:kite_stack.peek()
    let ph = level.placeholders[level.index]
    let ph_new_length = col('.') - ph.col_begin
    let ph_length_delta = ph_new_length - ph.length
    let ph.length = ph_new_length
    let marker = ph.col_begin

    " following placeholders at same level
    for ph in level.placeholders[level.index+1:]
      let ph.col_begin += ph_length_delta
    endfor

    " placeholders at outer levels
    for level in b:kite_stack.stack[:-2]
      for ph in level.placeholders
        if ph.col_begin > marker
          let ph.col_begin += ph_length_delta
        endif
      endfor
    endfor
  endif

  call b:kite_stack.push({'placeholders': placeholders, 'index': 0})

  " Move to first placeholder.
  call s:placeholder(0)
endfunction


" Go to next placeholder at current level, if there is one, or first placeholder at next level otherwise.
function! kite#snippet#next_placeholder()
  call s:update_placeholder_locations()
  call s:placeholder(b:kite_stack.peek().index + 1)
endfunction



function! kite#snippet#previous_placeholder(...)
  call s:placeholder(b:kite_stack.peek().index - 1 - (a:0 ? a:1 : 0))
endfunction


" Move to the placeholder at index and select its text.
function! s:placeholder(index)
  let index = a:index

  let level = b:kite_stack.peek()
  let placeholders = level.placeholders

  " Clear highlights before we pop the stack.
  call s:clear_all_placeholder_highlights()

  if index < 0
    " If no other levels in stack
    if len(b:kite_stack.stack) == 1
      " Stay with first placeholder and proceed
      let index = 0
    else
      call b:kite_stack.pop()
      call s:placeholder(b:kite_stack.peek().index - 1)
      return
    endif
  endif

  " if navigating forward from last placeholder of current level
  if index == len(placeholders)
    " If no other levels in stack
    if len(b:kite_stack.stack) == 1
      call s:goto_initial_completion_end()
    else
      call b:kite_stack.pop()
      call s:placeholder(b:kite_stack.peek().index + 1)
    endif
    return
  endif

  call s:highlight_current_level_placeholders()

  let level.index = index
  let ph = placeholders[index]

  " store line length before placeholder gets changed by user
  " let b:kite_line_length = col('$')

  if ph.length == 0
    normal! h
    return
  endif

  " insert mode -> normal mode
  stopinsert

  let linenr = line('.')
  call setpos("'<", [0, linenr, ph.col_begin])
  call setpos("'>", [0, linenr, ph.col_begin + ph.length - (mode() == 'n' ? 1 : 0)])
  " normal mode -> visual mode -> select mode
  execute "normal! gv\<C-G>"
  if mode() ==# 'S'
    execute "normal! \<C-O>gh"
  endif
endfunction


function! s:goto_initial_completion_end()
  " call setpos('.', [0, b:kite_linenr, b:kite_insertion_end + col('$') - b:kite_line_length - 1])
  call setpos('.', [0, b:kite_linenr, col('$')])
  startinsert!
  call s:teardown()
endfunction


" Adjust current and subsequent placeholders for the amount of text entered
" at the placeholder we are leaving.
function! s:update_placeholder_locations()
  if !exists('b:kite_line_length') | return | endif

  let line_length_delta = col('$') - b:kite_line_length

  " current placeholder
  let level = b:kite_stack.peek()
  let ph = level.placeholders[level.index]
  let marker = ph.col_begin
  let ph.length += line_length_delta

  " subsequent placeholders at current level
  for ph in level.placeholders[level.index+1:]
    let ph.col_begin += line_length_delta
  endfor

  " placeholders at outer levels
  for level in b:kite_stack.stack[:-2]
    for ph in level.placeholders
      if ph.col_begin > marker
        let ph.col_begin += line_length_delta
      endif
    endfor
  endfor

  let b:kite_line_length = col('$')
endfunction


function! s:highlight_current_level_placeholders()
  let group = s:highlight_group_for_placeholders()
  if empty(group) | return | endif

  let linenr = line('.')
  for ph in b:kite_stack.peek().placeholders
    let ph.matchid = matchaddpos(group, [[linenr, ph.col_begin, ph.length]])
  endfor
endfunction


" Clears highlights of placeholders in the stack.
"
" Note: if we need a way to clear highlights of placeholders which are no
" longer in the stack (because they have been popped) we could use a custom
" highlight group (e.g. KiteUnderline linked to Underline), call getmatches(),
" and remove all matches using the custom highlight group.
function! s:clear_all_placeholder_highlights()
  for level in b:kite_stack.stack
    for ph in level.placeholders
      if has_key(ph, 'matchid')
        call matchdelete(ph.matchid)
        unlet ph.matchid
      endif
    endfor
  endfor
endfunction


" Many plugins use vmap for visual-mode mappings but vmap maps both
" visual-mode and select-mode (they should use xmap instead).  Assume any
" visual-mode mappings for printable characters are not wanted and remove them
" (but remember them so we can restore them afterwards).  Similarly for map.
" Assume any select-only-mode maps are deliberate.
"
" :help mapmode-s
" :help Select-mode-mapping
function! s:remove_smaps_for_printable_characters()
  let b:kite_maps = []
  let printable_keycodes = [
        \ '<Space>',
        \ '<Bslash>',
        \ '<Tab>',
        \ '<C-Tab>',
        \ '<NL>',
        \ '<CR>',
        \ '<BS>',
        \ '<Leader>',
        \ '<LocalLeader>'
        \ ]

  " Get a list of maps active in select mode.
  for scope in ['<buffer>', '']
    redir => maps | silent execute 'smap' scope | redir END

    let mappings = split(maps, "\n")

    " 'No mapping found' or localised equivalent (starts with capital letter).
    if len(mappings) == 1 && mappings[0][0] =~ '\u' | continue | endif

    " Assume select-mode maps are deliberate and ignore them.
    call filter(mappings, 'v:val[0:2] !~# "s"')

    for mapping in mappings
      let lhs = matchlist(mapping, '\v^...(\S+)\s.*')[1]
      "                                ^^^ ^^^
      "                               mode lhs

      " Ignore keycodes for non-printable characters, e.g. <Left>
      if lhs[0] == '<' && index(printable_keycodes, lhs) == -1 | continue | endif

      " Remember the mapping so we can restore it later.
      call add(b:kite_maps, maparg(lhs, 's', 0, 1))

      " Remove the mapping.
      silent! execute 'sunmap' scope lhs
    endfor
  endfor
endfunction


function! s:restore_smaps()
  for mapping in b:kite_maps
    silent! execute mapping.mode . (mapping.noremap ? 'nore' : '') . 'map '
          \ . (mapping.buffer  ? '<buffer> ' : '')
          \ . (mapping.expr    ? '<expr> '   : '')
          \ . (mapping.nowait  ? '<nowait> ' : '')
          \ . (mapping.silent  ? '<silent> ' : '')
          \ . mapping.lhs . ' '
          \ . substitute(mapping.rhs, '<SID>', '<SNR>'.mapping.sid.'_', 'g')
  endfor

  unlet! b:kite_maps
endfunction


function! s:setup_maps()
  execute 'inoremap <buffer> <silent> <expr>' g:kite_next_placeholder     'pumvisible() ? "<C-Y>"                                                         : "<C-\><C-O>:call kite#snippet#next_placeholder()<CR>"'
  execute 'inoremap <buffer> <silent> <expr>' g:kite_previous_placeholder 'pumvisible() ? "<C-Y><C-G>:<C-U>call kite#snippet#previous_placeholder(2)<CR>" : "<C-\><C-O>:call kite#snippet#previous_placeholder()<CR>"'
  execute 'snoremap <buffer> <silent>'        g:kite_next_placeholder     '<Esc>:call kite#snippet#next_placeholder()<CR>'
  execute 'snoremap <buffer> <silent>'        g:kite_previous_placeholder '<Esc>:call kite#snippet#previous_placeholder()<CR>'

  call s:remove_smaps_for_printable_characters()
endfunction


function! kite#snippet#teardown_maps()
  execute 'silent! iunmap <buffer>' g:kite_next_placeholder
  execute 'silent! iunmap <buffer>' g:kite_previous_placeholder
  execute 'silent! sunmap <buffer>' g:kite_next_placeholder
  execute 'silent! sunmap <buffer>' g:kite_previous_placeholder
endfunction


function! s:setup_autocmds()
  augroup KiteSnippets
    autocmd! * <buffer>

    autocmd CursorMovedI <buffer>
          \ call s:update_placeholder_locations() |
          \ call s:clear_all_placeholder_highlights() |
          \ call s:highlight_current_level_placeholders()
    autocmd CursorMoved,CursorMovedI <buffer> call s:cursormoved()
    autocmd InsertLeave              <buffer> call s:insertleave()
  augroup END
endfunction


function! s:teardown_autocmds()
  autocmd! KiteSnippets * <buffer>
endfunction


" Called to deactivate all placeholders.
function! s:teardown()
  call s:clear_all_placeholder_highlights()
  call kite#snippet#teardown_maps()
  call s:teardown_autocmds()
  call s:restore_smaps()
  call b:kite_stack.empty()
  unlet! b:kite_linenr b:kite_line_length b:kite_insertion_end
endfunction


function! s:highlight_group_for_placeholders()
  for group in ['Special', 'SpecialKey', 'Underline', 'DiffChange']
    if hlexists(group)
      return group
    endif
  endfor
  return ''
endfunction


function! s:cursormoved()
  if !exists('b:kite_linenr') | return | endif
  if b:kite_linenr == line('.') | return | endif

  " TODO check whether the cursor is outside the bounds of the completion?

  call s:teardown()
endfunction


function! s:insertleave()
  " Modes established by experimentation.
  if mode(1) !=# 's' && mode(1) !=# ((has('patch-8.1.0225') || has('nvim-0.4.0')) ? 'niI' : 'n')
    call s:teardown()
  endif
endfunction


function! s:debug_stack()
  if b:kite_stack.is_empty()
    echom 'stack empty'
    return
  endif
  let i = 0
  for level in b:kite_stack.stack
    echom 'level' i
    echom '  index' level.index
    for pholder in level.placeholders
      echom '  '.string(pholder)
    endfor
    let i += 1
  endfor
endfunction
