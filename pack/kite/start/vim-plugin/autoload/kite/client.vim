let s:port               = empty($KITED_TEST_PORT) ? 46624 : $KITED_TEST_PORT
let s:channel_base       = 'localhost:'.s:port
let s:base_url           = 'http://127.0.0.1:'.s:port
let s:editor_path        = '/clientapi/editor'
let s:onboarding_path    = '/clientapi/plugins/onboarding_file?editor=vim'
let s:hover_path         = '/api/buffer/vim'
let s:docs_path          = 'kite://docs/'
let s:status_path        = '/clientapi/status?filename='
let s:languages_path     = '/clientapi/languages'
let s:copilot_path       = 'kite://home'
let s:counter_path       = '/clientapi/metrics/counters'
let s:settings_path      = 'kite://settings'
let s:permissions_path   = 'kite://settings/permissions'
let s:max_file_size_path = '/clientapi/settings/max_file_size_kb'
let s:codenav_path       = '/codenav/editor/related'


function! kite#client#docs(word)
  let url = s:docs_path.a:word
  call kite#utils#browse(url)
endfunction


function! kite#client#settings()
  call kite#utils#browse(s:settings_path)
endfunction


function! kite#client#permissions()
  call kite#utils#browse(s:permissions_path)
endfunction


function! kite#client#copilot()
  call kite#utils#browse(s:copilot_path)
endfunction


function! kite#client#counter(json, handler)
  let path = s:counter_path
  if has('channel')
    call s:async(function('s:timer_post', [path, g:kite_long_timeout, a:json, a:handler]))
  else
    call kite#async#execute(s:external_http_cmd(s:base_url.path, g:kite_long_timeout, 1), a:handler, a:json)
  endif
endfunction


function! kite#client#onboarding_file(handler)
  let path = s:onboarding_path
  if has('channel')
    let response = s:internal_http(path, g:kite_short_timeout)
  else
    let response = s:external_http(s:base_url.path, g:kite_short_timeout)
  endif
  return a:handler(s:parse_response(response))
endfunction


function! kite#client#status(filename, handler)
  let path = s:status_path.kite#utils#url_encode(a:filename)
  if has('channel')
    let response = s:internal_http(path, g:kite_short_timeout)
  else
    let response = s:external_http(s:base_url.path, g:kite_short_timeout)
  endif
  return a:handler(s:parse_response(response))
endfunction


function! kite#client#languages(handler)
  let path = s:languages_path
  if has('channel')
    let response = s:internal_http(path, g:kite_short_timeout)
  else
    let response = s:external_http(s:base_url.path, g:kite_short_timeout)
  endif
  return a:handler(s:parse_response(response))
endfunction


" Returns max file size in bytes, or -1 if not available.
function! kite#client#max_file_size()
  let path = s:max_file_size_path
  if has('channel')
    let response = s:internal_http(path, g:kite_short_timeout)
  else
    let response = s:external_http(s:base_url.path, g:kite_short_timeout)
  endif
  let result = s:parse_response(response)
  if result.status == 200
    return result.body * 1024
  else
    return -1
  endif
endfunction


function! kite#client#hover(filename, hash, cursor, handler)
  call s:wait_for_pending_events()

  let path = s:hover_path.'/'.a:filename.'/'.a:hash.'/hover?cursor_runes='.a:cursor
  if has('channel')
    call s:async(function('s:timer_get', [path, g:kite_long_timeout, a:handler]))
  else
    call kite#async#execute(s:external_http_cmd(s:base_url.path, g:kite_long_timeout, 0),
          \ function('s:parse_and_handle', [a:handler]))
  endif
endfunction


function! kite#client#signatures(json, handler)
  let path = s:editor_path.'/signatures'
  if has('channel')
    call s:async(function('s:timer_post', [path, g:kite_long_timeout, a:json, a:handler]))
  else
    call kite#async#execute(s:external_http_cmd(s:base_url.path, g:kite_long_timeout, 1),
          \ function('s:parse_and_handle', [a:handler]), a:json)
  endif
endfunction


function! kite#client#completions(json, handler)
  let path = s:editor_path.'/complete'
  if has('channel')
    call s:async(function('s:timer_post', [path, g:kite_long_timeout, a:json, a:handler]))
  else
    call kite#async#execute(s:external_http_cmd(s:base_url.path, g:kite_long_timeout, 1),
          \ function('s:parse_and_handle', [a:handler]), a:json)
  endif
endfunction


function! kite#client#request_related(json, handler)
  let path = s:codenav_path 
  let timeout = 10000 "10s
  if has('channel')
    call s:async(function('s:timer_post', [path, timeout, a:json, a:handler]))
  else
    call kite#async#execute(s:external_http_cmd(s:base_url.path, timeout, 1),
          \ function('s:parse_and_handle', [a:handler]), a:json)
  endif
endfunction


function! kite#client#post_event(json, handler)
  let path = s:editor_path.'/event'
  if has('channel')
    call s:async(function('s:timer_post', [path, g:kite_short_timeout, a:json, a:handler]))
  else
    call kite#async#execute(s:external_http_cmd(s:base_url.path, g:kite_short_timeout, 1),
          \ function('s:parse_and_handle', [a:handler]), a:json)
  endif
endfunction


function! s:timer_get(path, timeout, handler, timer)
  call a:handler(s:parse_response(s:internal_http(a:path, a:timeout)))
endfunction

function! s:timer_post(path, timeout, json, handler, timer)
  call a:handler(s:parse_response(s:internal_http(a:path, a:timeout, a:json)))
endfunction

function! s:async(callback)
  call timer_start(0, a:callback)
endfunction


function! s:on_std_out(_channel, message) dict
  let self.stdoutbuffer .= a:message
endfunction


" Optional argument is json to be posted
function! s:internal_http(path, timeout, ...)
  " Use HTTP 1.0 (not 1.1) to avoid having to parse chunked responses.
  if a:0
    let str = 'POST '.a:path." HTTP/1.0\nHost: localhost\nContent-Type: application/x-www-form-urlencoded\nContent-Length: ".len(a:1)."\n\n".a:1
  else
    let str = 'GET '.a:path." HTTP/1.0\nHost: localhost\n\n"
  endif
  call kite#utils#log('')
  call kite#utils#log(map(split(str, '\n', 1), '"> ".v:val'))

  let options = {'stdoutbuffer': ''}
  try
    let channel = ch_open(s:channel_base, {
          \   'mode':     'raw',
          \   'callback': function('s:on_std_out', options)
          \ })
  catch /E898\|E901\|E902/
    call kite#utils#log('| Cannot open channel: '.str)
    return ''
  endtry

  try
    call ch_sendraw(channel, str)
  catch /E630\|E631\|E906/
    call kite#utils#log('| Cannot send over channel: '.str)
    return ''
  endtry

  let start = reltime()

  while ch_status(channel) !=# 'closed'
    if reltimefloat(reltime(start))*1000 > a:timeout
      call kite#utils#log('| Timed out waiting for response (timeout: '.a:timeout.'ms)')
      try
        call ch_close(channel)
      catch /E906/
        " noop
      endtry
      return ''
    endif

    sleep 5m
  endwhile

  call kite#utils#log('| Received complete response: '.string(reltimefloat(reltime(start))*1000).'ms')

  return options.stdoutbuffer
endfunction


" Optional argument is json to be posted
function! s:external_http(url, timeout, ...)
  let cmd = s:external_http_cmd(a:url, a:timeout, a:0)
  if a:0
    return system(cmd, a:1)
  else
    return system(cmd)
  endif
endif
endfunction


" data argument is a boolean
function! s:external_http_cmd(endpoint, timeout, data)
  let cmd = s:http_binary
  let cmd .= ' --timeout '.a:timeout.'ms'
  if a:data
    let cmd .= ' -'
  endif
  let cmd .= ' '.s:shellescape(a:endpoint)
  call kite#utils#log('')
  call kite#utils#log('> '.cmd)
  return cmd
endfunction


function! s:parse_and_handle(handler, out)
  call a:handler(s:parse_response(a:out))
endfunction


" Returns the integer HTTP response code and the string body in a dictionary.
"
" lines - either a list (from async commands) or a string (from sync)
function! s:parse_response(lines)
  if empty(a:lines)
    return {'status': 0, 'body': ''}
  endif

  if type(a:lines) == v:t_string
    let lines = split(a:lines, '\r\?\n', 1)
  else
    let lines = a:lines
  endif
  call kite#utils#log(map(copy(lines), '"< ".v:val'))

  if type(a:lines) == v:t_string
    let lines = split(a:lines, '\r\?\n')
  else
    let lines = a:lines
  endif

  " Ignore occasional 100 Continue.
  let i = match(lines, '^HTTP/1.[01] [2345]\d\d ')
  if i == -1
    return {'status': 0, 'body': ''}
  endif
  let status = split(lines[i], ' ')[1]

  let sep = match(lines, '^$', i)
  let body = join(lines[sep+1:], "\n")

  return {'status': status, 'body': body}
endfunction


function! s:wait_for_pending_events()
  while kite#events#any_events_pending()
    sleep 5m
  endwhile
endfunction


" Only used with NeoVim on not-Windows, in async jobs.
function! s:shellescape(str)
  let [_shell, &shell] = [&shell, 'sh']
  let escaped = shellescape(a:str)
  let &shell = _shell
  return escaped
endfunction


let s:http_binary = kite#utils#lib('kite-http')


if !empty($KITED_TEST_PORT)
  function! kite#client#request_history()
    let ret = json_decode(
          \   s:parse_response(
          \     s:internal_http('/testapi/request-history', 500)
          \   ).body
          \ )

    if type(ret) != type([])
      throw '/testapi/request-history did not return a list (type '.type(ret).')'
    endif

    return ret
  endfunction

  function! kite#client#reset_request_history()
    call s:internal_http('/testapi/request-history/reset', 500)
  endfunction
endif
