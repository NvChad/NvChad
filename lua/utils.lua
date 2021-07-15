local M = {}

-- hide line numbers , statusline in specific buffers!
M.hideStuff = function()
    vim.api.nvim_exec(
        [[
   au BufEnter term://* setlocal nonumber
   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
   au BufEnter term://* set laststatus=0 
]],
        false
    )
end

return M
