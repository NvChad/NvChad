let kite#document#Document = {}


" NOTE: this has to be called with a g: prefix.
function! kite#document#Document.New(dict)
  let newDocument = copy(self)
  let newDocument.dict = a:dict
  return newDocument
endfunction


" Query the document, returning `default` if `key` does not exist
" or if the value at `key` is not the same type as `default`.
function! kite#document#Document.dig(key, default)
  let v = copy(self.dict)

  for k in split(a:key, '\.')
    let matchlist = matchlist(k, '\v(\w+)\[(-?\d+)\]')  " foo[42]

    if !empty(matchlist)
      let kk = matchlist[1]  " foo
      if has_key(v, kk)
        let v = get(v[kk], str2nr(matchlist[2]), a:default)
      else
        return a:default
      endif

    elseif type(v) == v:t_dict && has_key(v, k)
      let v = v[k]

    else
      return a:default
    endif
  endfor

  if type(v) == type(a:default)
    return v
  endif

  return a:default
endfunction

