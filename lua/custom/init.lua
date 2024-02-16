-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
vim.opt.list = true
vim.opt.listchars:append({ space = '⋅' }) -- Customize the representation of spaces if desired

-- Add relative line numbering by default 
vim.opt.relativenumber = true


