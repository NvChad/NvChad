" Values for s:os are used in plugin directory structure
" and also metric values.
if has('win64') || has('win32') || has('win32unix')
  let s:os = 'windows'
else
    let s:os = empty(findfile('/sbin/launchd')) ? 'linux' : 'macos'
endif

function! kite#utils#windows()
  return s:os ==# 'windows'
endfunction

function! kite#utils#macos()
  return s:os ==# 'macos'
endfunction

let s:separator  = !exists('+shellslash') || &shellslash ? '/' : '\'
let s:plugin_dir = expand('<sfile>:p:h:h:h')
let s:doc_dir    = s:plugin_dir.s:separator.'doc'
let s:lib_dir    = s:plugin_dir.s:separator.'lib'
let s:lib_subdir = s:lib_dir.s:separator.(s:os)
let s:vim_version = ''
let s:plugin_version = ''


function! kite#utils#vim_version()
  if !empty(s:vim_version)
    return s:vim_version
  endif
  let s:vim_version = kite#utils#normalise_version(execute('version'))
  return s:vim_version
endfunction


function! kite#utils#normalise_version(version)
  let lines = split(a:version, '\n')

  if lines[0] =~ 'NVIM'
    " Or use api_info().version.
    return lines[0]  " e.g. NVIM v0.2.2
  else
    let [major, minor] = matchlist(lines[0], '\v(\d)\.(\d+)')[1:2]

    let patch_line = match(lines, ': \d')
    if patch_line == -1
      let patches = '0'
    else
      let patches = substitute(split(lines[patch_line], ': ')[1], ' ', '', 'g')
    endif
    return join([major, minor, patches], '.')  " e.g. 8.1.1-582
  endif
endfunction


function! kite#utils#plugin_version()
  if !empty(s:plugin_version)
    return s:plugin_version
  endif

  let s:plugin_version = readfile(s:plugin_dir.s:separator.'VERSION')[0]

  return s:plugin_version
endfunction


" From tpope/vim-fugitive
function! s:winshell()
  return kite#utils#windows() && &shellcmdflag !~# '^-'
endfunction


function! kite#utils#browse(url)
  if kite#utils#windows()
    let cmd = 'cmd /c start "" "'.a:url.'"'
  else
    let cmd = 'open "'.a:url.'"'
  endif
  silent call system(cmd)
endfunction


" From tpope/vim-fugitive
function! s:shellescape(arg)
  if a:arg =~ '^[A-Za-z0-9_/.-]\+$'
    return a:arg
  elseif s:winshell()
    return '"'.substitute(substitute(a:arg, '"', '""', 'g'), '%', '"%"', 'g').'"'
  else
    return shellescape(a:arg)
  endif
endfunction

if kite#utils#windows()
  let s:settings_dir = join([$LOCALAPPDATA, 'Kite'], s:separator)
else
  let s:settings_dir = expand('~/.kite')
endif
if !isdirectory(s:settings_dir)
  call mkdir(s:settings_dir, 'p')
endif
let s:settings_path = s:settings_dir.s:separator.'vim-plugin.json'


" Get the value for the given key.
" If the key has not been set, returns the default value if given
" (i.e. the optional argument) or -1 otherwise.
function! kite#utils#get_setting(key, ...)
  let settings = s:settings()
  return get(settings, a:key, (a:0 ? a:1 : -1))
endfunction

" Sets the value for the key.
function! kite#utils#set_setting(key, value)
  let settings = s:settings()
  let settings[a:key] = a:value
  let json_str = json_encode(settings)
  call writefile([json_str], s:settings_path)
endfunction

function! s:settings()
  if filereadable(s:settings_path)
    let json_str = join(readfile(s:settings_path), '')
    return json_decode(json_str)
  else
    return {}
  endif
endfunction


function! kite#utils#os()
  return s:os
endfunction


function! kite#utils#lib(filename)
  return s:lib_subdir.s:separator.a:filename
endfunction


function! kite#utils#kite_installed()
  return !empty(s:kite_install_path())
endfunction

" Returns the kite installation path including the filename, or an empty string if not installed.
function! s:kite_install_path()
  if kite#utils#windows()
    let output = kite#async#sync('reg query HKEY_LOCAL_MACHINE\Software\Kite\AppData /v InstallPath /s /reg:64')
    let lines = filter(split(output, '\n'), 'v:val =~ "InstallPath"')
    if empty(lines)
      return ''
    endif
    return substitute(lines[0], '\v^\s+InstallPath\s+REG_\w+\s+', '', '').s:separator.'kited.exe'
  elseif kite#utils#macos()
    return kite#async#sync('mdfind ''kMDItemCFBundleIdentifier = "com.kite.Kite" || kMDItemCFBundleIdentifier = "enterprise.kite.Kite"''')
  else
    let path = exepath('/opt/kite/kited')
    if !empty(path)
      return path
    endif
    let path = exepath(expand('~/.local/share/kite/kited'))
    if !empty(path)
      return path
    endif
    return ''
  endif
endfunction


function! kite#utils#kite_running()
  if kite#utils#windows()
    let [cmd, process] = ['tasklist /FI "IMAGENAME eq kited.exe"', '^kited.exe']
  elseif kite#utils#macos()
    let [cmd, process] = ['ps -axco command', '^Kite$']
  else
    let process_name = empty($KITED_TEST_PORT) ? 'kited' : 'kited-test'
    let [cmd, process] = ['ps -axco command', '^'.process_name.'$']
  endif

  return match(split(kite#async#sync(cmd), '\n'), process) > -1
endfunction


function! kite#utils#launch_kited()
  if kite#utils#kite_running()
    return
  endif

  let path = s:kite_install_path()

  if empty(path)
    return
  endif

  if kite#utils#windows()
    let $KITE_SKIP_ONBOARDING = 1
    silent execute "!start" s:shellescape(path)
  elseif kite#utils#macos()
    call system('open -a '.path.' --args "--plugin-launch"')
  else
    silent execute '!'.path.' --plugin-launch >/dev/null 2>&1 &'
  endif
endfunction


" msg - a list or a string
function! kite#utils#log(msg)
  if g:kite_log
    if type(a:msg) == v:t_string
      let msg = [a:msg]
    else
      let msg = a:msg
    endif
    call writefile(msg, 'kite-vim.log', 'a')
  endif
endfunction


function! kite#utils#warn(msg)
  echohl WarningMsg
  echom 'Kite: '.a:msg
  echohl None
  let v:warningmsg = a:msg
endfunction


function! kite#utils#info(msg)
  echohl Question
  echom a:msg
  echohl None
endfunction


" Returns the absolute path to the current file after resolving symlinks.
"
" url_format - when truthy, return the path in a URL-compatible format.
function! kite#utils#filepath(url_format)
  let path = resolve(expand('%:p'))

  if a:url_format
    let path = substitute(path, '[\/]', ':', 'g')
    if kite#utils#windows()
      let path = substitute(path, '^\(\a\)::', '\1:', '')
      let path = ':windows:'.path
    endif
    let path = kite#utils#url_encode(path)
  endif

  return path
endfunction


" Returns a 2-element list of 0-based character indices into the buffer.
"
" When no text is selected, both elements are the cursor position.
"
" When text is selected, the elements are the start (inclusive) and
" end (exclusive) of the selection.
"
" Returns [-1, -1] when not in normal, insert, or visual mode.
function! kite#utils#selected_region_characters()
  return s:selected_region('c')
endfunction


" Returns a 2-element list of 0-based byte indices into the buffer.
"
" When no text is selected, both elements are the cursor position.
"
" When text is selected, the elements are the start (inclusive) and
" end (exclusive) of the selection.
"
" Returns [-1, -1] when not in normal, insert, or visual mode.
function! kite#utils#selected_region_bytes()
  return s:selected_region('b')
endfunction


" Returns a 2-element list of 0-based indices into the buffer.
"
" When no text is selected, both elements are the cursor position.
"
" When text is selected, the elements are the start (inclusive) and
" end (exclusive) of the selection.
"
" Returns [-1, -1] when not in normal, insert, or visual mode.
"
" param type (String) - 'c' for character indices, 'b' for byte indices
"
" NOTE: the cursor is moved during the function (but finishes where it started).
function! s:selected_region(type)
  if mode() ==# 'n' || mode() ==# 'i'
    if a:type == 'c'
      let offset = kite#utils#character_offset()
    else
      let offset = kite#utils#byte_offset_start()
    endif
    return [offset, offset]
  endif

  if mode() ==? 'v'
    let pos_start = getpos('v')
    let pos_end   = getpos('.')

    if (pos_start[1] > pos_end[1]) || (pos_start[1] == pos_end[1] && pos_start[2] > pos_end[2])
      let [pos_start, pos_end] = [pos_end, pos_start]
    endif

    " switch to normal mode
    execute "normal! \<Esc>"

    call setpos('.', pos_start)
    if a:type == 'c'
      let offset1 = kite#utils#character_offset()
    else
      let offset1 = kite#utils#byte_offset_start()
    endif

    call setpos('.', pos_end)
    " end position is exclusive
    if a:type == 'c'
      let offset2 = kite#utils#character_offset() + 1
    else
      let offset2 = kite#utils#byte_offset_end() + 1
    endif

    " restore visual selection
    normal! gv

    return [offset1, offset2]
  endif

  return [-1, -1]
endfunction


" Returns the 0-based index of the cursor in the buffer.
"
" Returns -1 when the buffer is empty.
function! kite#utils#cursor_characters()
  if mode() ==? 'v'
    " switch to normal mode
    execute "normal! \<Esc>"

    let cursor = kite#utils#character_offset()

    " restore visual selection
    normal! gv

    return cursor
  endif

  return kite#utils#character_offset()
endfunction


" Returns the 0-based index into the buffer of the cursor position.
" Returns -1 when the buffer is empty.
"
" Does not work in visual mode.
function! kite#utils#character_offset()
  " wordcount().cursor_chars is 1-based so we need to subtract 1.
  let offset = wordcount().cursor_chars - 1

  " In insert mode the cursor isn't really between two characters;
  " it is actually on the second character, but that's what we want
  " anyway.

  " If the cursor is just before (i.e. on) the end of the line, and
  " the file has dos line endings, wordcount().cursor_chars will
  " regard the cursor as on the second character of the \r\n.  In this
  " case we want the offset of the first, i.e. the \r.

  if col('.') == col('$') && &ff ==# 'dos'
    let offset -= 1
  endif

  return offset
endfunction


" Returns the 0-based index into the buffer of the cursor position.
" If the cursor is on a multibyte character, it reports the character's
" first byte.
function! kite#utils#byte_offset_start()
  let offset = line2byte(line('.')) - 1 + col('.') - 1
  if offset < 0
    let offset = 0
  endif
  return offset
endfunction

" Returns the 0-based index into the buffer of the cursor position.
" If the cursor is on a multibyte character, it reports the character's
" last byte.
function! kite#utils#byte_offset_end()
  let offset = wordcount().cursor_bytes - 1
  if offset < 0
    let offset = 0
  endif
  return offset
endfunction


function! kite#utils#buffer_contents()
  let line_ending = {"unix": "\n", "dos": "\r\n", "mac": "\r"}[&fileformat]
  return join(getline(1, '$'), line_ending).(&eol ? line_ending : '')
endfunction


" Similar to the goto command, but for characters.
" index is 1-based, the start of the file.
function! kite#utils#goto_character(index)
  call search('\m\%^\_.\{'.a:index.'}', 'es')

  " The search() function above counts a newline as 1 character even if it is
  " actually 2.  Therefore we need to adjust the cursor position when newlines
  " are 2 characters.
  if &ff ==# 'dos'
    let [_whichwrap, &whichwrap] = [&whichwrap, "h,l"]
    let delta = wordcount().cursor_chars - a:index
    while delta != 0
      " Cannot land on a newline character.
      if (delta == -1 || delta == -2) && col('.') == col('$') - 1
        break
      endif
      execute "normal! ".delta.(delta > 0 ? 'h' : 'l')
      let delta = wordcount().cursor_chars - a:index
    endwhile
    let &whichwrap = _whichwrap
  endif
endfunction


" Returns the MD5 hash of the buffer contents.
function! kite#utils#buffer_md5()
  return s:MD5(kite#utils#buffer_contents())
endfunction


" https://github.com/tpope/vim-unimpaired/blob/3a7759075cca5b0dc29ce81f2747489b6c8e36a7/plugin/unimpaired.vim#L327-L329
function! kite#utils#url_encode(str)
  return substitute(a:str,'[^A-Za-z0-9_.~-]','\="%".printf("%02X",char2nr(submatch(0)))','g')
endfunction


" Capitalises the first letter of str.
function! kite#utils#capitalize(str)
  return substitute(a:str, '^.', '\u\0', '')
endfunction


function! kite#utils#map_join(list, prop, sep)
  return join(map(copy(a:list), {_,v -> v[a:prop]}), a:sep)
endfunction


" Returns a list of lines, each no longer than length.
" The last line may be longer than length if it has no spaces.
" Assumes str is a constructor or function call.
"
" Example: json.dumps
"
"     dumps(obj, skipkeys, ensure_ascii, check_circular, allow_nan, cls, indent, separators, encoding, default, sort_keys, *args, **kwargs)
"
" - becomes when wrapped:
"
"     dumps(obj, skipkeys, ensure_ascii, check_circular,
"         allow_nan, cls, indent, separators, encoding,
"         default, sort_keys, *args, **kwargs)
"
function! kite#utils#wrap(str, length, indent)
  let lines = []

  let str = a:str
  let [prefix; str] = split(a:str, '(\zs')
  let str = join(str)

  while v:true
    let line = prefix.str

    if len(line) <= a:length
      call add(lines, line)
      break
    endif

    let i = strridx(str[0:a:length-len(prefix)], ' ')

    if i == -1
      call add(lines, line)
      break
    endif

    let line = prefix . str[0:i-1]
    call add(lines, line)
    let str = str[i+1:]

    let prefix = repeat(' ', a:indent)
  endwhile

  return lines
endfunction


function! kite#utils#coerce(dict, key, default)
  if has_key(a:dict, a:key)
    let v = a:dict[a:key]
    if type(v) == type(a:default)  " check type in case of null
      return v
    endif
  endif
  return a:default
endfunction


function! kite#utils#present(dict, key)
  return has_key(a:dict, a:key) && !empty(a:dict[a:key])
endfunction


" Returns a string of the given length.
"
" If length is 0 or negative, returns an empty string.
"
" If text is less than length, it is padded with leading spaces so that it is
" right-aligned.
"
" If text is greater than length, it is truncated with an ellipsis.
" If there isn't room for an ellipsis, or room for only an ellipsis, empty spaces are used.
function! kite#utils#ralign(text, length)
  if a:length <= 0
    return ''
  endif

  let text_width = strdisplaywidth(a:text)

  " The required length
  if text_width == a:length
    return a:text
  endif

  " Less than the required length: left-pad
  if text_width < a:length
    return repeat(' ', a:length-text_width) . a:text
  endif

  " Greater than the required length: truncate

  if kite#utils#windows()
    let ellipsis = '...'
  else
    let ellipsis = '…'
  endif
  let ellipsis_width = strdisplaywidth(ellipsis)

  if ellipsis_width >= a:length
    return repeat(' ', a:length)
  endif

  return a:text[: a:length-ellipsis_width-1] . ellipsis
endfunction


function! kite#utils#truncate(text, length)
  let text_width = strdisplaywidth(a:text)

  if text_width <= a:length
    return a:text
  endif

  if kite#utils#windows()
    let ellipsis = '...'
  else
    let ellipsis = '…'
  endif
  let ellipsis_width = strdisplaywidth(ellipsis)

  if ellipsis_width >= a:length
    return a:text[0] . ellipsis[0: a:length-2]
  endif

  return a:text[: a:length-ellipsis_width-1] . ellipsis
endfunction


function! s:chomp(str)
  return substitute(a:str, '\n$', '', '')
endfunction


function! s:md5(text)
  return s:chomp(system('md5', a:text))
endfunction

function! s:md5sum(text)
  return split(system('md5sum', a:text), ' ')[0]
endfunction

function! s:md5bin(text)
  return s:chomp(system(s:md5_binary, a:text))
endfunction


if executable('md5')
  let s:MD5 = function('s:md5')
elseif executable('md5sum')
  let s:MD5 = function('s:md5sum')
else
  let s:md5_binary = kite#utils#lib('md5Sum.exe')
  let s:MD5 = function('s:md5bin')
endif

