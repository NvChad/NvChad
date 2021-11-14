function! kite#hover#hover()
  if exists('b:kite_skip') && b:kite_skip | return | endif
  if wordcount().bytes > kite#max_file_size() | return | endif

  let filename = kite#utils#filepath(1)
  let hash = kite#utils#buffer_md5()
  let cursor = kite#utils#cursor_characters()

  call kite#client#hover(filename, hash, cursor, function('kite#hover#handler'))
endfunction


function! kite#hover#goto_definition()
  if &filetype != 'python'
    call kite#utils#warn('Go to definition is only available for Python')
    return
  endif

  if exists('b:kite_skip') && b:kite_skip | return | endif
  if wordcount().bytes > kite#max_file_size() | return | endif

  let filename = kite#utils#filepath(1)
  let hash = kite#utils#buffer_md5()
  let cursor = kite#utils#cursor_characters()

  call kite#client#hover(filename, hash, cursor, function('kite#hover#goto_definition_handler'))
endfunction


function! kite#hover#handler(response)
  if a:response.status == 200
    let json = json_decode(a:response.body)
    let sym = type(json.symbol) == v:t_list ? json.symbol[0] : json.symbol
    let id = sym.id
    if empty(id)
      let b:kite_id = -1
    else
      let b:kite_id = id
    endif

  else
    let b:kite_id = -1
  endif
endfunction


function! kite#hover#goto_definition_handler(response)
  if a:response.status != 200
    call kite#utils#warn('unable to find a definition.')
    return
  endif

  let json = json_decode(a:response.body)
  let definition = json.report.definition

  if type(definition) != type({})
    call kite#utils#warn('unable to find a definition.')
    return
  endif

  if definition.filename !=# expand('%:p')
    execute 'edit' definition.filename
  end
  execute definition.line
  normal! zz
endfunction
