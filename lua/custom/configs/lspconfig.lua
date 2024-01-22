local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { }

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

lspconfig.omnisharp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {
    "C:\\Users\\Admin\\AppData\\Local\\nvim-data\\mason\\packages\\omnisharp\\omnisharp",
    "--languageserver",
    "--hostPID",
    tostring(pid),
  },
  root_dir = util.root_pattern("*.csproj", "*.sln"),
}

-- lspconfig.angularls.setup({
--   root_dir = util.root_pattern("angular.json"),
--   single_file_support = false
-- })

lspconfig.pylsp.setup({})

-- require("sonarlint").setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   server = {
--     cmd = {
--       "C:\\Users\\Admin\\AppData\\Local\\nvim-data\\mason\\packages\\sonarlint-language-server\\sonarlint-language-server.cmd",
--       "-stdio",
--       "-analyzers",
--        "C:\\Users\\Admin\\AppData\\Local\\nvim-data\\mason\\share\\sonarlint-analyzers\\sonarpython.jar",
--        "C:\\Users\\Admin\\AppData\\Local\\nvim-data\\mason\\share\\sonarlint-analyzers\\sonarlintomnisharp.jar"
--     },
--
--   },
--   filetypes = {
--     'python',
--     'cs'
--   },
-- }
-- -- End user config
