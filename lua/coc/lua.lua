vim.api.nvim_exec([[

set fillchars=eob:\ 

tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on the bottom 
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-x> :call OpenTerminal()<CR>
nnoremap <c-b> :vnew term://bash<CR>

set ignorecase 
set noswapfile 
set title
set shortmess+=c
set updatetime=250 "for gitsigns"

" new tab and switching between em 

nnoremap <c-e> : tabnew<CR>
nnoremap <c-w> : tabp <CR>
nnoremap <c-u> : tabn <CR>

map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-l> <C-w>l
map <C-h> <C-w>h

inoremap kk <ESC>

let g:indentLine_enabled = 3
let g:indentLine_char_list = ['▏']

norm! gg=G

set expandtab sw=2

]])
