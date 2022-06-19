local M = {}

local local_capabilities = {}
M.create_config = function(attach, capabilities)
    return {
        on_attach = function(client, bufnr)
            attach(client, bufnr)
            client.resolved_capabilities.document_formatting = true
            client.resolved_capabilities.document_range_formatting = true
        end,
        capabilities = vim.tbl_deep_extend("force", capabilities, local_capabilities),
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
end

return M

