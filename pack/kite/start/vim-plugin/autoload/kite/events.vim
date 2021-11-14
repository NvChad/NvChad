let s:events_pending = 0

function! kite#events#any_events_pending()
  return s:events_pending > 0
endfunction


function! kite#events#event(action)
  let filename = kite#utils#filepath(0)

  if wordcount().bytes < kite#max_file_size()
    let action = a:action
    let text = kite#utils#buffer_contents()
  else
    let action = 'skip'
    let text = ''
  endif

  let [sel_start, sel_end] = kite#utils#selected_region_characters()
  if [sel_start, sel_end] == [-1, -1]
    return
  endif
  let selections = [{ 'start': sel_start, 'end': sel_end, 'encoding': 'utf-32' }]

  let json = json_encode({
        \ 'source':     'vim',
        \ 'filename':   filename,
        \ 'text':       text,
        \ 'action':     action,
        \ 'selections': selections,
        \ 'editor_version': kite#utils#vim_version(),
        \ 'plugin_version': kite#utils#plugin_version()
        \ })

  let s:events_pending += 1

  call kite#client#post_event(json, function('kite#events#handler', [bufnr('')]))
endfunction


function! kite#events#handler(bufnr, response)
  let s:events_pending -= 1

  call setbufvar(a:bufnr, 'kite_skip', (a:response.status == 0 || a:response.status == 403))
endfunction

