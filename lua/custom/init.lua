local autocmd = vim.api.nvim_create_autocmd
vim.o.sessionoptions = "curdir,folds,help,tabpages,winpos,buffers,globals"
vim.cmd("set noswapfile")

vim.o.confirm = true
vim.opt.title = true
autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("NvimTreeClose", {clear = true}),
  callback = function()
    local layout = vim.api.nvim_call_function("winlayout", {})
    if layout[1] == "leaf" and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree" and layout[3] == nil then vim.cmd("quit") end
  end
})

vim.cmd("set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1")

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
