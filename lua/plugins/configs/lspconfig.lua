local present, lspconfig = pcall(require, "lspconfig")

if not present then
   return
end

require("base46").load_highlight "lsp"

local M = {}
local utils = require "core.utils"

require "ui.lsp"

M.on_attach = function(client, bufnr)
   client.resolved_capabilities.document_formatting = false
   client.resolved_capabilities.document_range_formatting = false

   local lsp_mappings = utils.load_config().mappings.lspconfig
   utils.load_mappings({ lsp_mappings }, { buffer = bufnr })

   if client.supports_method "textDocument/signatureHelp" then
      vim.api.nvim_create_autocmd({ "CursorHoldI" }, {
         pattern = "*",
         group = vim.api.nvim_create_augroup("LspSignature", {}),
         callback = function()
            vim.lsp.buf.signature_help()
         end,
      })
   end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem = {
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

lspconfig.sumneko_lua.setup {
   on_attach = M.on_attach,
   capabilities = capabilities,

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

-- requires a file containing user's lspconfigs
local addlsp_confs = utils.load_config().plugins.options.lspconfig.setup_lspconf

if #addlsp_confs ~= 0 then
   require(addlsp_confs).setup_lsp(M.on_attach, capabilities)
end

return M
