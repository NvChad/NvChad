let s:completion_counter = 0

function! kite#signature#increment_completion_counter()
  let s:completion_counter = s:completion_counter + 1
endfunction

function! kite#signature#completion_counter()
  return s:completion_counter
endfunction


function! kite#signature#handler(counter, startcol, response) abort
  call kite#utils#log('signature: '.a:response.status)

  " Ignore old completion results.
  if a:counter != s:completion_counter
    return
  endif

  if a:response.status != 200
    return
  endif

  let json = json_decode(a:response.body)
  let call = g:kite#document#Document.New(json.calls[0])

  let function_name = call.dig('func_name', '')
  if empty(function_name)
    let function_name = call.dig('callee.repr', '')
  endif
  let function_name = split(function_name, '\.')[-1]

  let spacer = {'word': '', 'empty': 1, 'dup': 1}
  let indent = '  '
  let completions = []
  let wrap_width = 50


  "
  " Signature
  "
  let parameters = []
  let return_type = ''
  let [current_arg, in_kwargs] = [call.dig('arg_index', 0), call.dig('language_details.python.in_kwargs', 0)]
  let kind = call.dig('callee.kind', '')

  " 1. Name of function with parameters.
  if kind ==# 'function'
    " 1.b.1. Parameters
    for parameter in call.dig('callee.details.function.parameters', [])
      " 1.b.1.a. Name
      let name = parameter.name
      " 1.b.1.b. Default value
      if kite#utils#present(parameter.language_details.python, 'default_value')
        let name .= '='.parameter.language_details.python.default_value[0].repr
      endif
      " 2. Highlight current argument
      if !in_kwargs && len(parameters) == current_arg
        let name = '*'.name.'*'
      endif
      call add(parameters, name)
    endfor
    " 1.b.2. vararg indicator
    let vararg = call.dig('callee.details.function.language_details.python.vararg', {})
    if !empty(vararg)
      call add(parameters, '*'.vararg.name)
    endif
    " 1.b.3. keyword arguments indicator
    let kwarg = call.dig('callee.details.function.language_details.python.kwarg', {})
    if !empty(kwarg)
      call add(parameters, '**'.kwarg.name)
    endif
    " 1.b.4. Return type
    let return_value = call.dig('callee.details.function.return_value', [])
    if !empty(return_value)
      let return_type = ' -> '.return_value[0].type
    endif

  elseif kind ==# 'type'
    " 1.c.1. Parameters
    for parameter in call.dig('callee.details.type.language_details.python.constructor.parameters', [])
      " 1.c.1.a. Name
      let name = parameter.name
      " 1.c.1.b. Default value
      if kite#utils#present(parameter.language_details.python, 'default_value')
        let name .= '='.parameter.language_details.python.default_value[0].repr
      endif
      " 2. Highlight current argument
      if !in_kwargs && len(parameters) == current_arg
        let name = '*'.name.'*'
      endif
      call add(parameters, name)
    endfor
    " 1.c.2. vararg indicator
    let vararg = call.dig('callee.details.type.language_details.python.constructor.language_details.python.vararg', {})
    if !empty(vararg)
      call add(parameters, '*'.vararg.name)
    endif
    " 1.c.3. keyword arguments indicator
    let kwarg = call.dig('callee.details.type.language_details.python.constructor.language_details.python.kwarg', {})
    if !empty(kwarg)
      call add(parameters, '*'.kwarg.name)
    endif
    " 1.c.4. Return type
    let return_type = ' -> '.function_name
  endif

  " The completion popup does not wrap long lines so we wrap manually.
  for line in kite#utils#wrap(kite#symbol().' '.function_name.'('.join(parameters, ', ').')'.return_type, wrap_width, 4)
    let completion = {
          \   'word':  '',
          \   'abbr':  line,
          \   'empty': 1,
          \   'dup':   1
          \ }
    call add(completions, completion)
  endfor


  " 3. Keyword arguments
  let kwarg_parameters = call.dig('callee.details.function.kwarg_parameters', [])
  if !empty(kwarg_parameters)
    call add(completions, spacer)
    call add(completions, s:heading('**kw'))

    for kwarg in kwarg_parameters
      let name = kwarg.name
      let types = kite#utils#map_join(kwarg.inferred_value, 'repr', '|')
      if empty(types)
        let types = ''
      endif

      call add(completions, {
            \   'word':  name.'=',
            \   'abbr':  indent.name,
            \   'menu':  types,
            \   'empty': 1,
            \   'dup':   1
            \ })
    endfor
  endif


  " 4. Popular patterns
  if kite#signature#should_show_popular_patterns()
    let signatures = call.dig('signatures', [])
    if len(signatures) > 0
      call add(completions, spacer)
      call add(completions, s:heading('How Others Used This'))
    endif

    for signature in signatures
      let sigdoc = g:kite#document#Document.New(signature)

      " b. Arguments
      let arguments = []
      for arg in sigdoc.dig('args', [])
        call add(arguments, arg.name)
      endfor

      " c. Keyword arguments
      for kwarg in sigdoc.dig('language_details.python.kwargs', [])
        let name = kwarg.name
        let examples = kite#utils#coerce(kwarg.types[0], 'examples', [])
        if len(examples) > 0
          let name .= '='.examples[0]
        endif
        call add(arguments, name)
      endfor


      for line in kite#utils#wrap(function_name.'('.join(arguments, ', ').')', wrap_width, 2)
        let completion = {
              \   'word':  '',
              \   'abbr':  indent.line,
              \   'empty': 1,
              \   'equal': 1,
              \   'dup':   1
              \ }
        call add(completions, completion)
      endfor
    endfor
  endif

  if mode(1) ==# 'i'
    call complete(a:startcol+1, completions)
  endif
endfunction


function! kite#signature#should_show_popular_patterns()
  return kite#utils#get_setting('show_popular_patterns', 0)
endfunction



function! kite#signature#show_popular_patterns()
  call kite#utils#set_setting('show_popular_patterns', 1)
endfunction


function! kite#signature#hide_popular_patterns()
  call kite#utils#set_setting('show_popular_patterns', 0)
endfunction


function s:heading(text)
  return {'abbr': a:text.':', 'word': '', 'empty': 1, 'dup': 1}
endfunction
