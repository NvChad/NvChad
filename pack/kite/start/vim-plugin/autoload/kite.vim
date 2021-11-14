let s:status_poll_interval = 5 * 1000  " 5sec in milliseconds
let s:timer = -1
let s:watch_timer = -1

if !kite#utils#windows()
  let s:kite_symbol = nr2char(printf('%d', '0x27E0'))
else
  let s:kite_symbol = '[k]'
endif

let s:inited = 0
let s:kite_auto_launched = 0


function kite#enable_auto_start()
  call kite#utils#set_setting('start_kited_at_startup', 1)
  call s:launch_kited()
  call kite#utils#info('Kite: auto-start enabled')
endfunction

function kite#disable_auto_start()
  call kite#utils#set_setting('start_kited_at_startup', 0)
  call kite#utils#info('Kite: auto-start disabled')
endfunction

function kite#symbol()
  return s:kite_symbol
endfunction


function kite#statusline()
  if exists('b:kite_status')
    return b:kite_status
  else
    return ''
  endif
endfunction


function! kite#max_file_size()
  " Fallback to 1MB
  return get(b:, 'kite_max_file_size', 1048576)
endfunction


function! kite#configure_completeopt()
  " If the user has configured completeopt, leave it alone.
  redir => output
    silent verbose set completeopt
  redir END
  if len(split(output, '\n')) > 1 | return | endif

  set completeopt=menuone,noinsert
endfunction


function! s:setup_options()
  let s:pumheight = &pumheight
  if &pumheight == 0
    set pumheight=10
  endif

  let s:updatetime = &updatetime
  if &updatetime == 4000
    set updatetime=100
  endif

  let s:shortmess = &shortmess
  set shortmess+=c

  if kite#utils#windows()
    " Avoid taskbar flashing on Windows when executing system() calls.
    let s:shelltemp = &shelltemp
    set noshelltemp
  endif
endfunction


function! s:restore_options()
  if !exists('s:pumheight') | return | endif

  let &pumheight   = s:pumheight
  unlet s:pumheight
  let &updatetime  = s:updatetime
  let &shortmess   = s:shortmess
  if kite#utils#windows()
    let &shelltemp = s:shelltemp
  endif
endfunction


function! kite#bufenter()
  if kite#languages#supported_by_plugin()
    call s:launch_kited()

    if !kite#utils#kite_running()
      call kite#status#status()
      call s:start_status_timer()

      call s:start_watching_for_kited()
      return
    endif

    call s:stop_watching_for_kited()

    if kite#languages#supported_by_kited()
      if g:kite_completions
        call s:disable_completion_plugins()
      endif
      call s:setup_options()
      call s:setup_events()
      call s:setup_mappings()
      call s:set_max_file_size()

      if g:kite_completions
        setlocal completefunc=kite#completion#complete
      endif

      call kite#events#event('focus')
      call kite#status#status()
      call s:start_status_timer()

      return
    end
  end

  " Buffer is not a supported language.
  call s:restore_options()
  call s:stop_status_timer()
endfunction


function s:setup_events()
  augroup KiteEvents
    autocmd! * <buffer>

    autocmd CursorHold,CursorHoldI   <buffer> call kite#events#event('selection')
    autocmd TextChanged,TextChangedI <buffer> call kite#events#event('edit')
    autocmd FocusGained              <buffer> call kite#events#event('focus')

    if g:kite_completions
      autocmd InsertCharPre            <buffer> call kite#completion#insertcharpre()
      autocmd TextChangedI             <buffer> call kite#completion#autocomplete()

      autocmd CompleteDone             <buffer> call kite#completion#replace_range()

      if &ft == 'go'
        autocmd CompleteDone           <buffer> call kite#completion#expand_newlines()
      endif
      if &ft == 'python'
        autocmd CompleteDone           <buffer> call kite#snippet#complete_done()
      endif
    endif

    if exists('g:kite_documentation_continual') && g:kite_documentation_continual
      autocmd CursorHold,CursorHoldI <buffer> call kite#docs#docs()
    endif
  augroup END
endfunction


function! s:setup_mappings()
  if exists('g:kite_tab_complete') && g:kite_completions
    imap <buffer> <expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"
  endif

  if empty(maparg('K', 'n')) && !hasmapto('(kite-docs)', 'n')
    nmap <silent> <buffer> K <Plug>(kite-docs)
  endif

  if empty(maparg('<C-]>', 'n'))
    nmap <silent> <buffer> <C-]> :KiteGotoDefinition<CR>
  endif
endfunction


function! s:set_max_file_size()
  let max_file_size = kite#client#max_file_size()
  if max_file_size != -1
    let b:kite_max_file_size = max_file_size
  endif
endfunction


function! s:start_status_timer()
  if s:timer == -1
    let s:timer = timer_start(s:status_poll_interval,
          \   function('kite#status#status'),
          \   {'repeat': -1}
          \ )
  else
    call timer_pause(s:timer, 0)  " unpause
  endif
endfunction


function! s:stop_status_timer()
  call timer_pause(s:timer, 1)
endfunction


function! s:launch_kited()
  if !s:kite_auto_launched && kite#utils#get_setting('start_kited_at_startup', 1)
    call kite#utils#launch_kited()
    let s:kite_auto_launched = 1
  endif
endfunction


function! s:start_watching_for_kited()
  if s:watch_timer == -1
    let s:watch_timer = timer_start(s:status_poll_interval,
          \   function('kite#activate_when_ready'),
          \   {'repeat': -1}
          \ )
  else
    call timer_pause(s:watch_timer, 0)  " unpause
  endif
endfunction

function! kite#activate_when_ready(...)
  if kite#utils#kite_running()
    call kite#bufenter()
  endif
endfunction

function! s:stop_watching_for_kited()
  call timer_pause(s:watch_timer, 1)
endfunction


function! s:disable_completion_plugins()
  " coc.nvim
  if exists('g:did_coc_loaded')
    let b:coc_suggest_disable = 1
    " Alternatively:
    " autocmd BufEnter *.python :CocDisable
    " autocmd BufLeave *.python :CocEnable
    call kite#utils#warn("disabling coc.nvim's completions in this buffer")
  endif

  " Jedi
  if exists('*jedi#setup_completion')
    " This may not be enough: https://github.com/davidhalter/jedi-vim/issues/614
    let g:jedi#completions_enabled = 0
    call kite#utils#warn("disabling jedi-vim's completions")
    " Alternatively:
    " call kite#utils#warn('please uninstall jedi-vim and restart vim/nvim')
    " finish
  endif

  " YouCompleteMe
  if exists('g:loaded_youcompleteme') && !exists('g:ycm_filetype_blacklist.python')
    let g:ycm_filetype_blacklist.python = 1
    call kite#utils#warn("disabling YouCompleteMe's completions for python files")
  endif

  " Deoplete
  if exists('*deoplete#disable')
    call deoplete#disable()
    call kite#utils#warn("disabling deoplete's completions")
  endif
endfunction

