-- local configs = require("plugins.configs.lspconfig")
-- local on_attach = configs.on_attach
-- local capabilities = configs.capabilities
-- local pid = vim.fn.getpid()
--
-- local lspconfig = require "lspconfig"
-- local servers = { "fsautocomplete", "csharp_ls" }
--
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
--   }
-- end
--
-- lspconfig.omnisharp.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
--   cmd = { "C:\\Users\\kochc\\AppData\\Local\\nvim-data\\mason\\bin\\omnisharp.cmd", "--languageserver" , "--hostPID", tostring(pid) },
-- })

-- require('ionide').setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "csharp_ls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Without the loop, you would have to manually set up each LSP 
-- 
-- lspconfig.html.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
--
-- lspconfig.cssls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
require("lspconfig").csharp_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
