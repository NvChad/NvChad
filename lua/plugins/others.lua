local M = {}

M.colorizer = function()
   local present, colorizer = pcall(require, "colorizer")
   if present then
      colorizer.setup()
      vim.cmd "ColorizerReloadAllBuffers"
   end
end

M.comment = function()
   local present, nvim_comment = pcall(require, "nvim_comment")
   if present then
      nvim_comment.setup()
   end
end

M.escape = function()
   vim.g.better_escape_interval = 300
   vim.g.better_escape_shortcut = { "jk" }
end

M.lspkind = function()
   local present, lspkind = pcall(require, "lspkind")
   if present then
      lspkind.init()
   end
end

M.neoscroll = function()
   pcall(function()
      require("neoscroll").setup()
   end)
end

M.blankline = function()
   vim.g.indentLine_enabled = 1
   vim.g.indent_blankline_char = "▏"

   vim.g.indent_blankline_filetype_exclude = { "help", "terminal", "dashboard", "packer" }
   vim.g.indent_blankline_buftype_exclude = { "terminal" }

   vim.g.indent_blankline_show_trailing_blankline_indent = false
   vim.g.indent_blankline_show_first_indent_level = false
end

M.signature = function()
   local present, lspsignature = pcall(require, "lsp_signature")
   if present then
      lspsignature.setup {
         bind = true,
         doc_lines = 2,
         floating_window = true,
         fix_pos = true,
         hint_enable = true,
         hint_prefix = " ",
         hint_scheme = "String",
         use_lspsaga = false,
         hi_parameter = "Search",
         max_height = 22,
         max_width = 120, -- max_width of signature floating_window, line will be wrapped if exceed max_width
         handler_opts = {
            border = "single", -- double, single, shadow, none
         },
         zindex = 200, -- by default it will be on top of all floating windows, set to 50 send it to bottom
         padding = "", -- character to pad on left and right of signature can be ' ', or '|'  etc
      }
   end
end

return M
