local M = {}

M.setup_lsp = function(on_attach, capabilities)
   local lspconfig = require "lspconfig"
   local lsp_settings = require "custom.lsp"
   local servers = { "sumneko_lua", "html", "cssls", "clangd", "pyright", "tsserver", "jsonls" }

   for _, lsp in ipairs(servers) do
      -- default config
      local config = {
         on_attach = on_attach,
         capabilities = capabilities,
      }

      -- overriding default config (if exits)
      if lsp_settings[lsp] ~= nil then
         config = lsp_settings[lsp].create_config(on_attach, capabilities)
      end

      lspconfig[lsp].setup(config)
   end
end

return M
