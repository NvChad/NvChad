let s:text = [
      \ 'Kite is now integrated with Vim',
      \ '',
      \ 'Kite is an AI-powered programming assistant',
      \ 'that shows you the right information at the right',
      \ 'time to keep you in the flow.',
      \ '',
      \ 'Please choose:',
      \ '',
      \ 'Learn how to use Kite',
      \ 'Hide',
      \ 'Hide forever',
      \ ]
let s:option = 'onboarding_required'


function! kite#onboarding#call(force)
  if !a:force
    if !kite#utils#get_setting(s:option, 1)
      return
    endif
  endif

  call kite#client#onboarding_file(function('kite#onboarding#handler'))
endfunction


function! kite#onboarding#handler(response) abort
  if a:response.status == 200
    silent execute 'tabedit' json_decode(a:response.body)
    call kite#utils#set_setting(s:option, 0)

  else
    if exists('*popup_menu')
      if !has('patch-8.1.1799')
        call s:unmap_menu_keys()
      endif
      let title = s:text[0]
      let winid = popup_menu(s:text[1:], {
            \ 'title': '  '.title.'  ',
            \ 'callback': 'kite#onboarding#popup_callback',
            \ })
      call win_execute(winid, "normal! ".repeat('j', len(s:text[1:])-3))

    else
      let s:text[-3] = '1. '.s:text[-3]
      let s:text[-2] = '2. '.s:text[-2]
      let s:text[-1] = '3. '.s:text[-1]

      call s:handle_choice(inputlist(s:text)-1)
    endif
  endif
endfunction


" Invoked when popup closes.
function! kite#onboarding#popup_callback(_, result)
  call s:handle_choice(2 - len(s:text[1:]) + a:result)
endfunction


function! s:handle_choice(index)
  if a:index == 0  " learn now
    call kite#utils#browse('https://help.kite.com/category/47-vim-integration')
  elseif a:index == 2  " hide forever
    call kite#utils#set_setting(s:option, 0)
  endif
endfunction


function! s:unmap_menu_keys()
  silent! nunmap <CR>
  silent! nunmap <Space>
  silent! nunmap j
  silent! nunmap k
  silent! nunmap x
endfunction
