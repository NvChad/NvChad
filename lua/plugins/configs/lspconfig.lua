local present, lspconfig = pcall(require, "lspconfig")

if not present then
   return
end

local M = {}

require("plugins.configs.others").lsp_handlers()

-- Borders for LspInfo winodw
local win = require "lspconfig.ui.windows"
local _default_opts = win.default_opts

win.default_opts = function(options)
   local opts = _default_opts(options)
   opts.border = "single"
   return opts
end

M.on_attach = function(client, bufnr)
   client.resolved_capabilities.document_formatting = false
   client.resolved_capabilities.document_range_formatting = false

   local options = {

      -- NOTE : this mode_opts table isnt in the default whichkey config
      --  Its added here so you could configure it in chadrc

      mode_opts = {
         n = {
            mode = "n",
         },

         v = {
            mode = "v",
         },

         i = {
            mode = "i",
         },

         t = {
            mode = "t",
         },
      },

      icons = {
         breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
         separator = "  ", -- symbol used between a key and it's label
         group = "+", -- symbol prepended to a group
      },

      popup_mappings = {
         scroll_down = "<c-d>", -- binding to scroll down inside the popup
         scroll_up = "<c-u>", -- binding to scroll up inside the popup
      },

      window = {
         border = "none", -- none/single/double/shadow
      },

      layout = {
         spacing = 6, -- spacing between columns
      },

      hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },

      triggers_blacklist = {
         -- list of mode / prefixes that should never be hooked by WhichKey
         i = { "j", "k" },
         v = { "j", "k" },
      },
   }

   options = nvchad.load_override(options, "folke/which-key.nvim")

   local lsp_mappings = { nvchad.load_config().mappings.lspconfig }
   lsp_mappings[1]["mode_opts"] = { buffer = bufnr }

   if not nvchad.whichKey_map(lsp_mappings, options) then
      nvchad.no_WhichKey_table_map(lsp_mappings)
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
            globals = { "vim", "nvchad" },
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
local addlsp_confs = nvchad.load_config().plugins.options.lspconfig.setup_lspconf

if #addlsp_confs ~= 0 then
   require(addlsp_confs).setup_lsp(M.on_attach, capabilities)
end

return M
