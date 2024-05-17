local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "fsautocomplete", "jdtls"  }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- local mason_path = vim.fn.stdpath('data') .. "/mason/"
-- use gsup("\\", "/") to substitute path

lspconfig.powershell_es.setup {
  -- bundle_path = "C:/Users/casper.koch/AppData/Local/nvim-data/mason/packages/powershell-editor-services",
  bundle_path = "C:/Users/casper.koch/AppData/Local/nvim-data/mason/packages/powershell-editor-services",
  on_attach = on_attach,
  capabilities = capabilities,
}


-- Special setup for omnisharp
local pid = vim.fn.getpid()
lspconfig.omnisharp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "C:\\Users\\kochc\\AppData\\Local\\nvim-data\\mason\\bin\\omnisharp.cmd", "--languageserver" , "--hostPID", tostring(pid) },
})

-- require('ionide').setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
