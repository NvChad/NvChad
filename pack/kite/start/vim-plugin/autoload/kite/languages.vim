let s:languages_supported_by_kited = []

" Returns true if we want Kite completions for the current buffer, false otherwise.
function! kite#languages#supported_by_plugin()
  " Return false if the file extension is not recognised by kited.
  let recognised_extensions = [
        \ 'c',
        \ 'cc',
        \ 'cpp',
        \ 'cs',
        \ 'css',
        \ 'go',
        \ 'h',
        \ 'hpp',
        \ 'html',
        \ 'java',
        \ 'js',
        \ 'jsx',
        \ 'kt',
        \ 'less',
        \ 'm',
        \ 'php',
        \ 'py',
        \ 'pyw',
        \ 'rb',
        \ 'scala',
        \ 'sh',
        \ 'ts',
        \ 'tsx',
        \ 'vue',
        \ ]
  if index(recognised_extensions, expand('%:e')) == -1
    return 0
  endif

  if g:kite_supported_languages == ['*']
    return 1
  endif

  " Return false if the buffer's language is not one for which we want Kite completions.
  if index(g:kite_supported_languages, &filetype) == -1
    return 0
  endif

  return 1
endfunction


" Returns true if the current buffer's language is supported by kited, false otherwise.
function! kite#languages#supported_by_kited()
  " Only check kited's languages once.
  if empty(s:languages_supported_by_kited)
    " A list of language names, e.g. ['bash', 'c', 'javascript', 'ruby', ...]
    let s:languages_supported_by_kited = kite#client#languages(function('kite#languages#handler'))
  endif

  return index(s:languages_supported_by_kited, &filetype) != -1
endfunction


function! kite#languages#handler(response)
  if a:response.status != 200 | return [] | endif

  return json_decode(a:response.body)
endfunction
