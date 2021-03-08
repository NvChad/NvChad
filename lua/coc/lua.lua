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

local remap = vim.api.nvim_set_keymap

vim.g.coc_global_extensions = {
  'coc-eslint',
  'coc-tslint-plugin',
  'coc-json',
  'coc-css',
  'coc-html',
  'coc-stylelint',
  'coc-tsserver',
}

vim.g.coc_snippet_next = '<C-j>'
vim.g.coc_snippet_prev = '<C-k>'

vim.g.coc_root_patterns = { '.git', '.env', 'package.json' }

check_backspace = function()
    local col = vim.fn.col('.') - 1
    if col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
        return true
    else
        return false
    end
end

remap('i', '<Tab>', 'pumvisible() ? "<C-n>" : v:lua.check_backspace() ? "<Tab>" : coc#refresh()', { noremap = true, silent = true, expr = true })
remap('i', '<S-Tab>', 'pumvisible() ? "<C-p>" : "<S-Tab>"', { noremap = true, expr = true })
remap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<C-g>u<CR><C-r>=coc#on_enter()<CR>"', { noremap = true, silent = true, expr = true })
remap('i', '<C-c>', 'coc#refresh()', { noremap = true, silent = true, expr = true })
remap('n', 'K', '<CMD>call CocActionAsync("doHover")<CR>', { noremap = true, silent = true })

remap('n', 'gd', '<Plug>(coc-definition)', {noremap = true, silent = true})
remap('n', 'gr', '<Plug>(coc-references)', {noremap = true, silent = true})
remap('n', 'gR', '<Plug>(coc-rename)', {noremap = true, silent = true})
