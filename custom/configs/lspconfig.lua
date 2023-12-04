local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "angularls",
  "cssls",
  "svelte",
  "jsonls",
  "tailwindcss",
  "unocss",
  "tsserver",
  "pylsp",
  "stylelint_lsp",
  "gopls"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end


