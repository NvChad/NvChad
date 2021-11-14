"
" Editor feature metrics
"

let s:prompted = 0


" Optional argument is value by which to increment named metric.
" Defaults to 1.
function! kite#metrics#requested(name)
  call s:increment('vim_'.a:name.'_requested')
endfunction


function! kite#metrics#fulfilled(name)
  call s:increment('vim_'.a:name.'_fulfilled')
endfunction


function! s:increment(name)
  let json = json_encode({'name': a:name, 'value': 1})
  call kite#client#counter(json, function('kite#metrics#handler'))
endfunction


function! kite#metrics#handler(response)
  " Noop
endfunction

