local M = {}

local chadrc_config = require("core.utils").load_config()

M.better_escape = function()
   require("better_escape").setup {
      mapping = chadrc_config.mappings.plugins.better_escape.esc_insertmode,
      timeout = chadrc_config.plugins.options.esc_insertmode_timeout,
   }
end

M.blankline = function(override_flag)
   local default = {
      indentLine_enabled = 1,
      char = "▏",
      filetype_exclude = {
         "help",
         "terminal",
         "dashboard",
         "packer",
         "lspinfo",
         "TelescopePrompt",
         "TelescopeResults",
         "nvchad_cheatsheet",
         'lsp-installer',
         "",
      },
      buftype_exclude = { "terminal" },
      show_trailing_blankline_indent = false,
      show_first_indent_level = false,
   }
   if override_flag then
      default = require("core.utils").tbl_override_req("indent_blankline", default)
   end
   require("indent_blankline").setup(default)
end

M.colorizer = function(override_flag)
   local present, colorizer = pcall(require, "colorizer")
   if present then
      local default = {
         filetypes = {
            "*",
         },
         user_default_options = {
            RGB = true, -- #RGB hex codes
            RRGGBB = true, -- #RRGGBB hex codes
            names = false, -- "Name" codes like Blue
            RRGGBBAA = false, -- #RRGGBBAA hex codes
            rgb_fn = false, -- CSS rgb() and rgba() functions
            hsl_fn = false, -- CSS hsl() and hsla() functions
            css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
            css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn

            -- Available modes: foreground, background
            mode = "background", -- Set the display mode.
         },
      }
      if override_flag then
         default = require("core.utils").tbl_override_req("nvim_colorizer", default)
      end
      colorizer.setup(default["filetypes"], default["user_default_options"])
      vim.cmd "ColorizerReloadAllBuffers"
   end
end

M.comment = function(override_flag)
   local present, nvim_comment = pcall(require, "Comment")
   if present then
      local default = {}
      if override_flag then
         default = require("core.utils").tbl_override_req("nvim_comment", default)
      end
      nvim_comment.setup(default)
   end
end

M.lsp_handlers = function()
   local function lspSymbol(name, icon)
      local hl = "DiagnosticSign" .. name
      vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
   end

   lspSymbol("Error", "")
   lspSymbol("Info", "")
   lspSymbol("Hint", "")
   lspSymbol("Warn", "")

   vim.diagnostic.config {
      virtual_text = {
         prefix = "",
      },
      signs = true,
      underline = true,
      update_in_insert = false,
   }

   vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
      border = "single",
   })
   vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
      border = "single",
   })

   -- suppress error messages from lang servers
   vim.notify = function(msg, log_level)
      if msg:match "exit code" then
         return
      end
      if log_level == vim.log.levels.ERROR then
         vim.api.nvim_err_writeln(msg)
      else
         vim.api.nvim_echo({ { msg } }, true, {})
      end
   end
end

M.gitsigns = function(override_flag)
   local present, gitsigns = pcall(require, "gitsigns")
   if present then
      local default = {
         signs = {
            add = { hl = "DiffAdd", text = "│", numhl = "GitSignsAddNr" },
            change = { hl = "DiffChange", text = "│", numhl = "GitSignsChangeNr" },
            delete = { hl = "DiffDelete", text = "", numhl = "GitSignsDeleteNr" },
            topdelete = { hl = "DiffDelete", text = "‾", numhl = "GitSignsDeleteNr" },
            changedelete = { hl = "DiffChangeDelete", text = "~", numhl = "GitSignsChangeNr" },
         },
      }
      if override_flag then
         default = require("core.utils").tbl_override_req("gitsigns", default)
      end
      gitsigns.setup(default)
   end
end

return M
