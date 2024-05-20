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

-- Special setup for lsps

local mason_path = os.getenv("LOCALAPPDATA") .. "\\nvim-data\\mason"
local mason_path_unix = string.gsub(mason_path, "\\", "/")

--
-- powershell_es
--

lspconfig.powershell_es.setup {
  bundle_path = mason_path_unix .. "/packages/powershell-editor-services" ,
  on_attach = on_attach,
  capabilities = capabilities,
}

--
-- omnisharp 
--

local pid = vim.fn.getpid()
lspconfig.omnisharp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { mason_path .. "\\bin\\omnisharp.cmd", "--languageserver" , "--hostPID", tostring(pid) },
})
