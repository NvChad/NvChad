local lsp_config_present, lspconfig = pcall(require, "lspconfig")
local lsp_installer_present, lsp_installer = pcall(require, "nvim-lsp-installer")

if not lsp_config_present or not lsp_installer_present then
  return
end

require("plugins.configs.others").lsp_handlers()

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown", "plaintext" }
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    "documentation",
    "detail",
    "additionalTextEdits",
  },
}

local M = {}

M.default_config = {
  on_attach = function(client, _)
    client.resolved_capabilities.document_formatting = false
    client.resolved_capabilities.document_range_formatting = false

    require("core.mappings").lspconfig()
  end,
  capabilities = capabilities,
}

M.sumneko_lua = {
  on_attach = function(client, _)
    M.default_config.on_attach(client, _)
  end,
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

-- requires the file path field containing the user's lspconfig
local addlsp_confs = require("core.utils").load_config().plugins.options.lspconfig.setup_lspconf
local custom_lspconfig = nil
local custom_servers = {}

-- list of default servers to install
local servers = { "sumneko_lua" }

-- check if a custom lspconfig path is set and require it as well as the new configs
if #addlsp_confs ~= 0 then
  custom_lspconfig = require(addlsp_confs)
  M = vim.tbl_deep_extend("force", M, custom_lspconfig.setup_lsp(M))
  custom_servers = custom_lspconfig.servers or {}
end

-- gets a list of all installed lsp servers
local installed_servers = vim.tbl_map(function(v) return v.name end,
  lsp_installer.get_installed_servers())

-- merge default, custom, and installed servers
servers = vim.tbl_extend("force", servers, custom_servers, installed_servers)

-- run the custom setup configurations if defined or the default one for each server
for _, server in ipairs(servers) do
  local lsp = M[server]
  if not lsp then lsp = M.default_config end
  lspconfig[server].setup(lsp)
end

return M
