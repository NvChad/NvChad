function! kite#codenav#from_file()
  let filepath = kite#utils#filepath(0)
  call kite#codenav#request_related(filepath, v:null)
endfunction


function! kite#codenav#from_line()
  let filepath = kite#utils#filepath(0)
  call kite#codenav#request_related(filepath, line("."))
endfunction


function! kite#codenav#request_related(filename, line)
  let json = json_encode({
    \ 'editor': 'vim',
    \ 'location': {'filename': a:filename, 'line': a:line}
    \ })
  call kite#client#request_related(json, function('kite#codenav#handler'))
endfunction


function! kite#codenav#handler(response) abort
  if a:response.status != 200
    if a:response.status == 0
      call kite#utils#warn("Kite could not be reached. Please check that Kite Engine is running.")
      return
    endif


    let err = json_decode(a:response.body)

    if empty(err) || type(err.message) != v:t_string
      call kite#utils#warn("Oops! Something went wrong with Code Finder. Please try again later.")
      return
    endif

    call kite#utils#warn(err.message)
  endif
endfunction
