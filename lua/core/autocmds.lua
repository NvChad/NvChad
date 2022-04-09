local settings=require("core.utils").load_config().options.nvChad
-- uncomment this if you want to open nvim with a dir
-- vim.cmd [[ autocmd BufEnter * if &buftype != "terminal" | lcd %:p:h | endif ]]

-- Use relative & absolute line numbers in 'n' & 'i' modes respectively
-- vim.cmd[[ au InsertEnter * set norelativenumber ]]
-- vim.cmd[[ au InsertLeave * set relativenumber ]]

-- Don't show any numbers inside terminals
if not settings.terminal_numbers then
   vim.cmd [[ au TermOpen term://* setlocal nonumber norelativenumber | setfiletype terminal ]]
end

-- Don't show status line on certain windows
if not require("core.utils").load_config().plugins.options.statusline.hide_disable then
   vim.cmd [[ autocmd BufEnter,BufRead,BufWinEnter,FileType,WinEnter * lua require("core.utils").hide_statusline() ]]
end

-- Open a file from its last left off position
-- vim.cmd [[ au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]]
-- File extension specific tabbing
-- vim.cmd [[ autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ]]
