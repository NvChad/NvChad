-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- Misc
function OpenExplorer()
  vim.cmd "!explorer.exe . &"
end

vim.api.nvim_create_user_command("Exp", OpenExplorer, {})
vim.api.nvim_create_user_command("Explorer", OpenExplorer, {})

vim.wo.relativenumber = true