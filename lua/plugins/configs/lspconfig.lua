local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

require("base46").load_highlight "lsp"
require "nvchad_ui.lsp"

local M = {}
local utils = require "core.utils"
local util = require "lspconfig/util"
local pid = vim.fn.getpid()

-- export on_attach & capabilities for custom lspconfigs

M.on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = false
  client.server_capabilities.documentRangeFormattingProvider = false

  utils.load_mappings("lspconfig", { buffer = bufnr })

  if client.server_capabilities.signatureHelpProvider then
    require("nvchad_ui.signature").setup(client)
  end
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}

local cmd = {"node", "C:/Users/Admin/AppData/Local/nvim-data/mason/packages/angular-language-server/node_modules/@angular/language-server/index.js", "--stdio", "--tsProbeLocations", "C:/Users/Admin/AppData/Local/nvim-data/mason/packages/angular-language-server/node_modules" , "--ngProbeLocations", "C:/Data/Stable_Diffusion/redbubble-automation-tool/node_modules", "--logFile", "C:/Users/Admin/AppData/Local/nvim-data/mason/packages/angular-language-server/node_modules/@angular/language-server/log.txt"}

lspconfig.angularls.setup({
  on_attach = M.on_attach,
  capabilities = M.capabilities,
  cmd = cmd,
  on_new_config = function(new_config,new_root_dir)
    new_config.cmd = cmd
  end,
  root_dir = util.root_pattern("angular.json"),
  single_file_support = false
})

lspconfig.emmet_ls.setup({
  on_attach = M.on_attach,
  capabilities = M.capabilities,
  filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less' },
  init_options = {
    html = {
      options = {
        -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
        ["bem.enabled"] = true,
      },
    },
  }
})

lspconfig.html.setup({
  single_file_support = true
})

lspconfig.docker_compose_language_service.setup({
  single_file_support = true
})

lspconfig.jsonls.setup({
  single_file_support = true
})

lspconfig.tsserver.setup({
  single_file_support = true
})

lspconfig.omnisharp.setup({
   cmd = { "C:\\Users\\Admin\\AppData\\Local\\nvim-data\\mason\\packages\\omnisharp\\OmniSharp", "--languageserver" , "--hostPID", tostring(pid) },
   root_dir = util.root_pattern("*.csproj", "*.sln")
})

lspconfig.lua_ls.setup {
  on_attach = M.on_attach,
  capabilities = M.capabilities,

  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
      workspace = {
        library = {
          [vim.fn.expand "$VIMRUNTIME/lua"] = true,
          [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
        },
        maxPreload = 100000,
        preloadFileSize = 10000,
      },
    },
  },
}

return M
