-- hide line numbers , statusline in specific buffers!
vim.api.nvim_exec(
    [[
   au TermOpen term://* setlocal nonumber
   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
]],
    false
)
