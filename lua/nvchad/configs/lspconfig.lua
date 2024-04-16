local M = {}
local map = vim.keymap.set
local conf = require("nvconfig").ui.lsp

-- export on_attach & capabilities
M.on_attach = function(client, bufnr)
  local function opts(desc)
    return { buffer = bufnr, desc = desc }
  end

  map("n", "gD", vim.lsp.buf.declaration, opts "LSP Go to declaration")
  map("n", "gd", vim.lsp.buf.definition, opts "LSP Go to definition")
  map("n", "K", vim.lsp.buf.hover, opts "LSP hover information")
  map("n", "gi", vim.lsp.buf.implementation, opts "LSP Go to implementation")
  map("n", "<leader>sh", vim.lsp.buf.signature_help, opts "LSP Show signature help")
  map("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, opts "LSP Add workspace folder")
  map("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, opts "LSP Remove workspace folder")

  map("n", "<leader>wl", function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, opts "LSP List workspace folders")

  map("n", "<leader>D", vim.lsp.buf.type_definition, opts "LSP Go to type definition")

  map("n", "<leader>ra", function()
    require "nvchad.lsp.renamer"()
  end, opts "LSP NvRenamer")

  map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts "LSP Code action")
  map("n", "gr", vim.lsp.buf.references, opts "LSP Show references")

  -- setup signature popup
  if conf.signature and client.server_capabilities.signatureHelpProvider then
    require("nvchad.lsp.signature").setup(client, bufnr)
  end
end

-- disable semanticTokens
M.on_init = function(client, _)
  if client.supports_method "textDocument/semanticTokens" then
    client.server_capabilities.semanticTokensProvider = nil
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

M.defaults = function()
  dofile(vim.g.base46_cache .. "lsp")
  require "nvchad.lsp"

  require("lspconfig").lua_ls.setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
    on_init = M.on_init,

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
