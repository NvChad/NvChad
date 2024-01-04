local attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = attach,
  capabilities = capabilities,
  filetypes = {"python"}
})

lspconfig.rust_analyzer.setup({
  on_attach = attach,
  capabilities = capabilities,
  filetypes = {"rust"}
})
