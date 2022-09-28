local M = {}

local local_capabilities = {}
M.create_config = function(injected_attach, injected_capabilities)
  return {
    on_attach = function(client, bufnr)
      injected_attach(client, bufnr)
      client.resolved_capabilities.document_formatting = false -- using null-ls instead
      client.resolved_capabilities.document_range_formatting = false -- using null-ls instead
    end,
    capabilities = vim.tbl_deep_extend("force", injected_capabilities, local_capabilities),
    settings = {
      Lua = {
        runtime = {
          -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
          version = 'LuaJIT'
        },
        diagnostics = {globals = {"vim"}},
        workspace = {
          library = {[vim.fn.expand "$VIMRUNTIME/lua"] = true, [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true},
          maxPreload = 100000,
          preloadFileSize = 10000
        }
      }
    }
  }
end

return M
