let s:should_trigger_completion = 0
let s:completion_counter = 0
let s:begin = 0
let s:end = 0


function! kite#completion#replace_range()
  if empty(v:completed_item) | return | endif
  if !exists('s:startcol') | return | endif
  let startcol = s:startcol
  unlet s:startcol

  if has_key(v:completed_item, 'user_data') && !empty(v:completed_item.user_data)
    let range = json_decode(v:completed_item.user_data).range
    let placeholders = json_decode(v:completed_item.user_data).placeholders
  elseif exists('b:kite_completions') && has_key(b:kite_completions, v:completed_item.word)
    let range = json_decode(b:kite_completions[v:completed_item.word]).range
    let placeholders = json_decode(b:kite_completions[v:completed_item.word]).placeholders
  else
    return
  endif

  " The range seems to be wrong when placeholders are involved so stop here.
  if !empty(placeholders) | return | endif

  let col = col('.')
  let _col = col

  " end of range
  let n = range.end - s:offset_before_completion
  if n > 0
    execute 'normal! "_'.n.'x'
    let col -= n
  endif

  " start of range
  let range_begin_col = col('.') - (kite#utils#character_offset() - range.begin)
  let n = startcol - range_begin_col
  if n > 0
    call kite#utils#goto_character(range.begin + 1)
    execute 'normal! "_'.n.'x'
    let col -= n
  endif

  " restore cursor position
  if col != _col
    execute 'normal!' (col+1).'|'
    call s:feedkeys("\<Esc>la")
  endif
endfunction


function! kite#completion#expand_newlines()
  if empty(v:completed_item) | return | endif
  if match(v:completed_item.word, '\n') == -1 | return | endif

  let parts = split(getline('.'), '\n', 1)
  delete _
  call append(line('.')-1, parts)
  -1
  " startinsert! doesn't seem to work with: package main^@import ""^@
  call s:feedkeys("\<Esc>A")
endfunction


function! kite#completion#insertcharpre()
  let s:should_trigger_completion = 1

  " Trigger a fresh completion after every keystroke when the popup menu
  " is visible (by calling the function which TextChangedI would call
  " (TextChangedI is not triggered when the popup menu is visible)).
  if pumvisible()
    call kite#utils#log('# Trigger autocomplete because of pumvisible(): '.v:char)
    call kite#completion#autocomplete()
  endif
endfunction


function! kite#completion#autocomplete()
  if !g:kite_auto_complete | return | endif
  if exists('b:kite_skip') && b:kite_skip | return | endif
  if wordcount().bytes > kite#max_file_size() | return | endif

  if s:should_trigger_completion
    let s:should_trigger_completion = 0
    call s:feedkeys("\<C-X>\<C-U>")
  endif
endfunction


" Manual invocation calls this method.
function! kite#completion#complete(findstart, base)
  if a:findstart
    if !s:completeopt_suitable()
      let g:kite_auto_complete = 0
      return -3
    endif

    " Store the buffer contents and cursor position here because when Vim
    " calls this function the second time (with a:findstart == 0) Vim has
    " already deleted the text between `start` and the cursor position.
    let s:cursor = kite#utils#character_offset()
    let s:text = kite#utils#buffer_contents()

    let s:startcol = s:findstart()
    return s:startcol
  else
    " Leave CTRL-X submode so user can invoke other completion methods.
    call s:feedkeys("\<C-e>")
    call s:get_completions()
    if has('patch-8.1.0716')
      return v:none
    else
      return []
    endif
  endif
endfunction


function! s:findstart()
  let line = getline('.')
  let start = col('.') - 1

  let s:signature = s:before_function_call_argument(line[:start-1]) && s:begin == 0

  if !s:signature
    while start > 0 && line[start - 1] =~ '\w'
      let start -= 1
    endwhile
  endif

  return start
endfunction


function! s:get_completions()
  if s:signature
    call kite#signature#increment_completion_counter()
  else
    let s:completion_counter = s:completion_counter + 1
  endif

  let filename = kite#utils#filepath(0)

  if s:signature
    let params = {
          \   'filename':     filename,
          \   'editor':       'vim',
          \   'text':         s:text,
          \   'cursor_runes': s:cursor,
          \   'offset_encoding': 'utf-32'
          \ }
  else
    let params = {
          \   'no_snippets':  (g:kite_snippets ? v:false : v:true),
          \   'no_unicode':   (kite#utils#windows() ? v:true : v:false),
          \   'filename':     filename,
          \   'editor':       'vim',
          \   'text':         s:text,
          \   'position': {
          \     'begin': (s:begin > 0 ? s:begin : s:cursor),
          \     'end':   (s:end   > 0 ? s:end   : s:cursor),
          \   },
          \   'offset_encoding': 'utf-32',
          \   'placeholders': []
          \ }
    let s:begin = 0
    let s:end   = 0
  endif

  let json = json_encode(params)

  if s:signature
    call kite#client#signatures(json, function('kite#signature#handler', [kite#signature#completion_counter(), s:startcol]))
  else
    call kite#client#completions(json, function('kite#completion#handler', [s:completion_counter, s:startcol]))
  endif
endfunction


function! kite#completion#handler(counter, startcol, response) abort
  call kite#utils#log('completion: '.a:response.status)

  " Ignore old completion results.
  if a:counter != s:completion_counter
    return
  endif

  if a:response.status != 200
    return
  endif

  " This should not happen but evidently it sometimes does (#107).
  if empty(a:response.body)
    return
  endif

  let json = json_decode(a:response.body)

  " API should return 404 status when no completions but it sometimes
  " return 200 status and an empty response body, or "completions":"null".
  if empty(json) || type(json.completions) != v:t_list
    return
  endif

  " 'display' is the LHS of each option in the completion menu
  let max_display_length = s:max_display_length(json.completions, 0)
  " 'hint' is the RHS of each option in the completion menu
  " Add 1 for leading space we add
  let max_hint_length = s:max_hint_length(json.completions) + 1

  let available_win_width = s:winwidth() - a:startcol
  let max_width = available_win_width > g:kite_completion_max_width
        \ ? g:kite_completion_max_width : available_win_width

  "               pad      LHS text        gap    RHS text       gap          kite branding           pad scrollbar
  "                |          |             |        |            |                |                   |   |
  let menu_width = 1 + max_display_length + 1 + max_hint_length + 1 + strdisplaywidth(kite#symbol()) + 2 + 1

  if menu_width < max_width  " no truncation
    let lhs_width = max_display_length
    let rhs_width = max_hint_length

  elseif menu_width - 1 - max_hint_length < max_width  " truncate rhs
    let lhs_width = max_display_length
    let rhs_width = max_width - (1 + max_display_length + 1 + strdisplaywidth(kite#symbol()) + 2 + 1)

  else  " drop rhs and truncate lhs
    let lhs_width = max_width - (1 + 1 + strdisplaywidth(kite#symbol()) + 2 + 1)
    let rhs_width = 0
  endif

  let matches = []
  for c in json.completions
    call add(matches, s:adapt(c, lhs_width, rhs_width, 0))

    if has_key(c, 'children')
      for child in c.children
        call add(matches, s:adapt(child, lhs_width, rhs_width, 1))
      endfor
    endif
  endfor

  if !has('patch-8.0.1493')
    let b:kite_completions = {}
    for item in filter(copy(matches), 'has_key(v:val, "user_data")')
      let b:kite_completions[item.word] = item.user_data
    endfor
  endif

  if mode(1) ==# 'i'
    let s:startcol = a:startcol+1
    let s:offset_before_completion = kite#utils#character_offset()
    call complete(a:startcol+1, matches)
  endif
endfunction


function! s:adapt(completion_option, lhs_width, rhs_width, nesting)
  let display = s:indent(a:nesting) . a:completion_option.display
  let display = kite#utils#truncate(display, a:lhs_width)

  " Ensure a minimum separation between abbr and menu of two spaces.
  " (Vim lines up the menus so that they are left-aligned 1 space after the longest abbr).
  let hint = ' ' . a:completion_option.hint

  let hint = kite#utils#ralign(hint, a:rhs_width)

  " Add the branding
  let hint .= ' '.kite#symbol()

  return {
        \   'word': a:completion_option.snippet.text,
        \   'abbr': display,
        \   'info': a:completion_option.documentation.text,
        \   'menu': hint,
        \   'equal': 1,
        \   'user_data': json_encode({'placeholders': a:completion_option.snippet.placeholders, 'range': a:completion_option.replace})
        \ }
endfunction


function! s:max_hint_length(completions)
  let max = 0

  for e in a:completions
    let len = strdisplaywidth(e.hint)
    if len > max
      let max = len
    endif

    if has_key(e, 'children')
      let len = s:max_hint_length(e.children)
      if len > max
        let max = len
      endif
    endif
  endfor

  return max
endfunction


function! s:max_display_length(completions, nesting)
  let max = 0

  for e in a:completions
    let len = strdisplaywidth(s:indent(a:nesting) . e.display)
    if len > max
      let max = len
    endif

    if has_key(e, 'children')
      let len = s:max_display_length(e.children, a:nesting+1)
      if len > max
        let max = len
      endif
    endif
  endfor

  return max
endfunction


function! s:indent(nesting)
  return repeat('  ', a:nesting)
endfunction


" Returns truthy if the cursor is:
"
" - just after an open parenthesis; or
" - just after a comma inside a function call; or
" - just after an equals sign inside a function call.
"
" Note this differs from all the other editor plugins.  They can all show both
" a signature popup and a completions popup at the same time, whereas Vim can
" only show one popup.  Therefore we need to switch its purpose between
" signature info and completions info at appropriate points inside a function
" call's arguments.
"
" line - the line up to the cursor position
function! s:before_function_call_argument(line)
  " Other editors basically do this:
  " return a:line =~ '\v[(][^)]*$'

  return a:line =~ '\v[(]([^)]+[=,])?\s*$'
endfunction


" Returns the width of the part of the current window which holds the buffer contents.
function! s:winwidth()
  let w = winwidth(0)

  if &number
    let w -= &numberwidth
  endif

  let w -= &foldcolumn

  if &signcolumn == 'yes' || (&signcolumn == 'auto' && s:signs_in_buffer())
    " TODO: neovim multiple sign columns
    let w -= 2
  endif

  return w
endfunction


" Returns 1 if the current buffer has any signs, 0 otherwise.
function! s:signs_in_buffer()
  let bufinfo = getbufinfo(bufnr(''))[0]
  let signs = has_key(bufinfo, 'signs') ? bufinfo.signs : []
  return !empty(signs)
endfunction


function! s:completeopt_suitable()
  let copts = split(&completeopt, ',')

  if g:kite_auto_complete
    if index(copts, 'menuone') == -1
      call s:popup_warn("Kite: completeopt must contain 'menuone'")
      return 0
    endif

    if index(copts, 'noinsert') == -1 && index(copts, 'noselect') == -1
      call s:popup_warn("Kite: completeopt must contain 'noinsert' and/or 'noselect'")
      return 0
    endif
  endif

  return 1
endfunction


" feedkeys() by default adds keys to the end of the typeahead buffer.  Any
" keys already in the buffer will be processed first and may change Vim's
" state, making the queued keys no longer appropriate (e.g. an insert mode key
" combo being applied in normal mode).  To avoid this we use the 'i' flag
" which ensures the keys are processed immediately.
function s:feedkeys(keys)
  call feedkeys(a:keys, 'i')
endfunction


function! s:popup_warn(msg)
  if exists('*popup_notification')
    call popup_notification(a:msg, {
          \   'pos':   'botleft',
          \   'line':  'cursor-1',
          \   'col':   'cursor',
          \   'moved': 'any',
          \   'time':  2000
          \ })
  elseif exists('*nvim_open_win')
    let lines = s:border(a:msg)
    let buf = nvim_create_buf(v:false, v:true)
    call nvim_buf_set_lines(buf, 0, -1, v:true, lines)
    let winid = nvim_open_win(buf, v:false, {
          \   'relative': 'cursor',
          \   'anchor':   'SW',
          \   'row':      0,
          \   'col':      0,
          \   'width':    strdisplaywidth(lines[0]),
          \   'height':   len(lines),
          \   'focusable': v:false,
          \   'style':    'minimal'
          \ })
    call nvim_win_set_option(winid, 'winhighlight', 'Normal:WarningMsg')
    call timer_start(2000, {-> execute("call nvim_win_close(".winid.", v:true)")})
  else
    call kite#utils#warn(a:msg)
  endif
endfunction


" Converts:
"
"   A quick brown fox.
"
" Into:
"
"   +--------------------+
"   | A quick brown fox. |
"   +--------------------+
"
function! s:border(text)
  return [
        \ '+'.repeat('-', strdisplaywidth(a:text)+2).'+',
        \ '| '.a:text.' |',
        \ '+'.repeat('-', strdisplaywidth(a:text)+2).'+'
        \ ]
endfunction
