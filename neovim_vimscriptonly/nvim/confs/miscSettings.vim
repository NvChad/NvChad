" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
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

set updatetime=250 "for gitsigns"
let g:tagalong_verbose = 1

set showtabline=0  " Show tabline
set guioptions-=e  " Don't use GUI tabline
set mouse=a

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

"hi CustomExplorerBg guibg=#22262C

"augroup NvimTree 
"  au!
"  au FileType NvimTree setlocal winhighlight=Normal:CustomExplorerBg
"augroup END

let g:auto_save = 1
 
" let mapleader = "'"
set ignorecase 
set noswapfile 
set title
