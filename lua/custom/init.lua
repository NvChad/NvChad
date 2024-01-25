-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

local autocmd = vim.api.nvim_create_autocmd

autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"*.cql", "*.cypher", "*.cyp"},
  command = "setfiletype cypher"
})
