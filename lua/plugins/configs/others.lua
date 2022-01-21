local M = {}

local chadrc_config = require("core.utils").load_config()

M.autopairs = function(override_flag)
   local present1, autopairs = pcall(require, "nvim-autopairs")
   local present2, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")

   if present1 and present2 then
      local chad_defaults = {fast_wrap = {}}
      if override_flag then
         chad_defaults = require("core.utils").tbl_override_req("nvim_autopairs", chad_defaults)
      end
      autopairs.setup(chad_defaults)

      local cmp = require "cmp"
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
   end
end

M.better_escape = function()
   require("better_escape").setup {
      mapping = chadrc_config.mappings.plugins.better_escape.esc_insertmode,
      timeout = chadrc_config.plugins.options.esc_insertmode_timeout,
   }
end

M.blankline = function(override_flag)
   local chad_defaults = {
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
         "",
      },
      buftype_exclude = { "terminal" },
      show_trailing_blankline_indent = false,
      show_first_indent_level = false,
   }
   if override_flag then
      chad_defaults = require("core.utils").tbl_override_req("indent_blankline", chad_defaults)
   end
   require("indent_blankline").setup(chad_defaults)
end

M.colorizer = function(override_flag)
   local present, colorizer = pcall(require, "colorizer")
   if present then
      local chad_defaults = {
         filetypes = {
            "*"
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
         chad_defaults = require("core.utils").tbl_override_req("nvim_colorizer", chad_defaults)
      end
      colorizer.setup(chad_defaults["filetypes"], chad_defaults["user_default_options"])
      vim.cmd "ColorizerReloadAllBuffers"
   end
end

M.comment = function(override_flag)
   local present, nvim_comment = pcall(require, "Comment")
   if present then
      local chad_defaults = {}
      if override_flag then
         chad_defaults = require("core.utils").tbl_override_req("nvim_comment", chad_defaults)
      end
      nvim_comment.setup(chad_defaults)
   end
end

M.luasnip = function(override_flag)
   local present, luasnip = pcall(require, "luasnip")
   if present then
      local chad_defaults = {
         history = true,
         updateevents = "TextChanged,TextChangedI",
      }
      if override_flag then
         chad_defaults = require("core.utils").tbl_override_req("luasnip", chad_defaults)
      end
      luasnip.config.set_config(chad_defaults)
      require("luasnip/loaders/from_vscode").load { paths = chadrc_config.plugins.options.luasnip.snippet_path }
      require("luasnip/loaders/from_vscode").load()
   end
end

M.signature = function(override_flag)
   local present, lspsignature = pcall(require, "lsp_signature")
   if present then
      local chad_defaults = {
         bind = true,
         doc_lines = 0,
         floating_window = true,
         fix_pos = true,
         hint_enable = true,
         hint_prefix = " ",
         hint_scheme = "String",
         hi_parameter = "Search",
         max_height = 22,
         max_width = 120, -- max_width of signature floating_window, line will be wrapped if exceed max_width
         handler_opts = {
            border = "single", -- double, single, shadow, none
         },
         zindex = 200, -- by default it will be on top of all floating windows, set to 50 send it to bottom
         padding = "", -- character to pad on left and right of signature can be ' ', or '|'  etc
      }
      if override_flag then
         chad_defaults = require("core.utils").tbl_override_req("signature", chad_defaults)
      end
      lspsignature.setup(chad_defaults)
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
      local chad_defaults = {
         signs = {
            add = { hl = "DiffAdd", text = "│", numhl = "GitSignsAddNr" },
            change = { hl = "DiffChange", text = "│", numhl = "GitSignsChangeNr" },
            delete = { hl = "DiffDelete", text = "", numhl = "GitSignsDeleteNr" },
            topdelete = { hl = "DiffDelete", text = "‾", numhl = "GitSignsDeleteNr" },
            changedelete = { hl = "DiffChangeDelete", text = "~", numhl = "GitSignsChangeNr" },
         },
      }
      if override_flag then
         chad_defaults = require("core.utils").tbl_override_req("gitsigns", chad_defaults)
      end
      gitsigns.setup(chad_defaults)
   end
end

return M
