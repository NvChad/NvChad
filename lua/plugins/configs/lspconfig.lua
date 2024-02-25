local M = {}
local map = vim.keymap.set

-- export on_attach & capabilities for custom lspconfigs
M.on_attach = function(client, bufnr)
  local conf = require("nvconfig").ui.lsp

  -- semanticTokens
  if not conf.semantic_tokens and client.supports_method "textDocument/semanticTokens" then
    client.server_capabilities.semanticTokensProvider = nil
  end

  if conf.signature and client.server_capabilities.signatureHelpProvider then
    require("nvchad.signature").setup(client, bufnr)
  end

  local function opts(desc)
    return { buffer = bufnr, desc = desc }
  end

  map("n", "gD", vim.lsp.buf.declaration, opts "Go to declaration | lsp")
  map("n", "gd", vim.lsp.buf.definition, opts "Go to definition | lsp")
  map("n", "K", vim.lsp.buf.hover, opts "Show hover information | lsp")
  map("n", "gi", vim.lsp.buf.implementation, opts "Go to implementation | lsp")
  map("n", "<C-k>", vim.lsp.buf.signature_help, opts "Show signature help | lsp")
  map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts "Add workspace folder | lsp")
  map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts "Remove workspace folder | lsp")

  map("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts "List workspace folders | lsp")

  map("n", "<leader>D", vim.lsp.buf.type_definition, opts "Go to type definition | lsp")
  map("n", "<leader>rn", vim.lsp.buf.rename, opts "Rename symbol | lsp")
  map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts "Code action | lsp")
  map("n", "gr", vim.lsp.buf.references, opts "Show references | lsp")
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

M.defaults = function()
  dofile(vim.g.base46_cache .. "lsp")
  require "nvchad.lsp"

  require("lspconfig").lua_ls.setup {
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
            [vim.fn.stdpath "data" .. "/lazy/ui/nvchad_types"] = true,
            [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
          },
          maxPreload = 100000,
          preloadFileSize = 10000,
        },
      },
    },
  }
end

return M
