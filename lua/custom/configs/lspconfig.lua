local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
  on_attach = config.on_attach,
  capabilities = config.capabilities,
  filetypes = {"python"},
})
