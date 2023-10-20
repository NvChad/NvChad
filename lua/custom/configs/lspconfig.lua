local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
--
-- User load_config
local pid = vim.fn.getpid()
local util = require "lspconfig/util"

lspconfig.omnisharp.setup({
  on_attach = on_attach,
  capabilities = capabilities,
   cmd = { "C:\\Users\\Admin\\AppData\\Local\\nvim-data\\mason\\packages\\omnisharp\\omnisharp", "--languageserver" , "--hostPID", tostring(pid) },
   root_dir = util.root_pattern("*.csproj", "*.sln")
})

-- lspconfig.angularls.setup({
--   root_dir = util.root_pattern("angular.json"),
--   single_file_support = false
-- })

lspconfig.pylsp.setup({})

lspconfig.emmet_ls.setup{
  filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
  init_options = {
    html = {
      options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  }
}

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
  },
}
-- End user config
