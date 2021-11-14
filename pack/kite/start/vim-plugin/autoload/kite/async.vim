let s:async_sync_id = 0
let s:async_sync_outputs = {}

function! s:next_async_sync_id()
  let async_sync_id = s:async_sync_id
  let s:async_sync_id += 1
  return async_sync_id
endfunction

function! s:async_sync_output(async_sync_id, output)
  if type(a:output) == v:t_list
    " Ensure empty list becomes an empty string.
    let output = join(a:output, "\n")
  else
    " Assume this is a string
    let output = a:output
  endif
  let s:async_sync_outputs[a:async_sync_id] = output  " job can now be garbage collected
endfunction


" Executes `cmd` asynchronously but looks synchronous to the caller.
function! kite#async#sync(cmd)
  let async_sync_id = s:next_async_sync_id()
  let job_handle = kite#async#execute(a:cmd, function('s:async_sync_output', [async_sync_id]))
  let s:async_sync_outputs[async_sync_id] = job_handle
  let job_type = type(job_handle)  " Assume not a string

  let vim = !has('nvim')
  while type(s:async_sync_outputs[async_sync_id]) == job_type
    if vim | call job_status(job_handle) | endif
    sleep 5m
  endwhile

  let output = s:async_sync_outputs[async_sync_id]
  unlet s:async_sync_outputs[async_sync_id]

  return output
endfunction


" Optional argument is data (JSON) to pass to cmd's stdin.
" Returns the job / job id.
function! kite#async#execute(cmd, handler, ...)
  let options = {
        \ 'stdoutbuffer': [],
        \ 'handler': a:handler,
        \ }
  let command = s:build_command(a:cmd)

  if has('nvim')
    let jobid = jobstart(command, extend(options, {
          \ 'on_stdout': function('s:on_stdout_nvim'),
          \ 'on_exit':   function('s:on_exit_nvim')
          \ }))
    if a:0
      call chansend(jobid, a:1)
      call chanclose(jobid, 'stdin')
    endif
    return jobid
  else
    let job = job_start(command, {
          \ 'out_cb':       function('s:on_stdout_vim', options),
          \ 'exit_cb':      function('s:on_exit_vim', options)
          \ })
    if a:0
      let channel = job_getchannel(job)
      call ch_sendraw(channel, a:1)
      call ch_close_in(channel)
    endif
    return job
  endif
endfunction


function! s:build_command(cmd)
  if has('nvim')
    if has('unix')
      return ['sh', '-c', a:cmd]
    elseif has('win64') || has('win32')
      return ['cmd.exe', '/c', a:cmd]
    else
      throw 'unknown os'
    endif
  else
    if has('unix')
      return ['sh', '-c', a:cmd]
    elseif has('win64') || has('win32')
      return 'cmd.exe /c '.a:cmd
    else
      throw 'unknown os'
    endif
  endif
endfunction


function! s:on_stdout_vim(_channel, data) dict
  " a:data - an output line
  call add(self.stdoutbuffer, a:data)
endfunction

function! s:on_exit_vim(job, exit_status) dict
  " Allow time for any buffered data to trigger out_cb.
  " 5m is an educated guess.
  sleep 5m
  call self.handler(self.stdoutbuffer)
endfunction

function! s:on_stdout_nvim(_job_id, data, event) dict
  if empty(self.stdoutbuffer)
    let self.stdoutbuffer = a:data
  else
    let self.stdoutbuffer = self.stdoutbuffer[:-2] +
          \ [self.stdoutbuffer[-1] . a:data[0]] +
          \ a:data[1:]
  endif
endfunction


function! s:on_exit_nvim(_job_id, _data, _event) dict
  call map(self.stdoutbuffer, 'substitute(v:val, "\r$", "", "")')
  call self.handler(self.stdoutbuffer)
endfunction
