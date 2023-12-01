local autocmd = vim.api.nvim_create_autocmd

autocmd("ExitPre", {
  pattern = "*",
  command = ":FloatermKill!<CR>",
})

-- 默认terminal以preview的形式
vim.g.floaterm_wintype = "split"
vim.g.floaterm_height = 0.25
vim.g.floaterm_autoclose=2
-- 默认进入到项目的root目录
vim.g.floaterm_rootmarkers = {'.project', '.git', '.hg', '.svn', '.root', '.gitignore'}
