let g:indentLine_enabled = 1
let g:indentLine_char_list = ['▏']

set expandtab sw=2

norm! gg=G
highlight EndOfBuffer ctermfg=black ctermbg=black

" line nums and its fg
highlight VertSplit cterm=NONE
set numberwidth =1
set number
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

syntax on
syntax enable
set termguicolors
colorscheme base16-onedark 

highlight! Normal guifg=NONE guibg=NONE

lua require'colorizer'.setup()

hi LineNr guibg=NONE
hi SignColumn guibg=NONE
hi VertSplit guibg=NONE

highlight DiffAdd guifg=#81A1C1 guibg = none
highlight DiffChange guifg =#3A3E44 guibg = none
highlight DiffModified guifg = #81A1C1 guibg = none
