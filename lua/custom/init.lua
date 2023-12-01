local autocmd = vim.api.nvim_create_autocmd
vim.o.sessionoptions = "curdir,folds,help,tabpages,winpos,buffers,globals"
vim.cmd "set noswapfile"

vim.o.confirm = true
vim.opt.title = true
-- 设置tab宽度为4个空格
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.splitbelow = false

autocmd("BufEnter", {
  group = vim.api.nvim_create_augroup("NvimTreeClose", { clear = true }),
  callback = function()
    local layout = vim.api.nvim_call_function("winlayout", {})
    if
      layout[1] == "leaf"
      and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree"
      and layout[3] == nil
    then
      vim.cmd "quit"
    end
  end,
})

autocmd("ExitPre", {
  callback = function()
    -- 将DBUI产生的buffer页面关闭
    local buffers = vim.api.nvim_list_bufs()
    for _, buffer in ipairs(buffers) do
      if vim.api.nvim_buf_get_option(buffer, 'filetype') == "sql"
        or vim.api.nvim_buf_get_option(buffer, 'filetype') == "mysql"
        or vim.api.nvim_buf_get_option(buffer, 'filetype') == "dbout"  then
        vim.cmd("bd! " .. buffer)
      end
    end
   
    -- 关闭除当前活跃tab
    local tabs = vim.api.nvim_list_tabpages()
    for _, tab in ipairs(tabs) do
      if tab ~= vim.api.nvim_get_current_tabpage() then
        vim.cmd("tabc" .. tab)
      end
    end
  end,
})

vim.opt.fileencodings = "ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1"

-- 设置新打开的窗口在左边
vim.opt.splitright = false

vim.api.nvim_command('command! -nargs=1 LiveGrep lua require("telescope").extensions.live_grep_args.live_grep_args({default_text=<q-args>})<CR>')

vim.cmd("autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })")

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
