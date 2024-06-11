vim.schedule(function()
   vim.opt.shadafile = vim.fn.expand "$HOME" .. "/.local/share/nvim/shada/main.shada"
   vim.cmd [[ silent! rsh ]]
end)
vim.cmd [[ au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]]
