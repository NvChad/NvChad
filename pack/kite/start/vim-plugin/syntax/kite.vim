if exists('b:current_syntax')
  finish
endif


" Section headings
syntax match kiteHeading /\v^[A-Z* ]+$/
highlight link kiteHeading String


" Usages / Definitions
syntax include @python syntax/python.vim
syntax region kiteSnippet start=/\v^\[.+:\d+\]/ end=/$/ keepend contains=kiteRef,kiteCode
syntax match kiteRef /\v^\[.+:\d+\]/ contained
syntax region kiteCode start=/ / end=/$/ contains=@python contained
highlight link kiteRef Comment


" Links
syntax region MyLink start=/^-> /hs=e end=/\v(\s\(\a+[.]\a{2,3}\))?$/he=s-1 contains=Domain
syntax match Domain /\v\(\a+[.]\a{2,3}\)/
highlight link MyLink Underlined
highlight link Domain Comment


let b:current_syntax = 'kite'

