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

