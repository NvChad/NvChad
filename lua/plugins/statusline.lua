local global_theme = "themes/" .. require("utils").load_config().ui.theme
local colors = require(global_theme)

local present1, gl = pcall(require, "galaxyline")
local present2, condition = pcall(require, "galaxyline.condition")
if not (present1 or present2) then
   return
end

local gls = gl.section

gl.short_line_list = { " " }

local icon_styles = {
   default = {
      left = "",
      right = " ",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },

   round = {
      left = "",
      right = "",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },

   slant = {
      left = " ",
      right = " ",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },

   block = {
      left = " ",
      right = " ",
      main_icon = "   ",
      vi_mode_icon = "   ",
      position_icon = "  ",
   },

   arrow = {
      left = "",
      right = "",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },
}

local user_statusline_style = require("utils").load_config().ui.statusline_style
local statusline_style = icon_styles[user_statusline_style]

local left_separator = statusline_style.left
local right_separator = statusline_style.right

gls.left[1] = {
   FirstElement = {
      provider = function()
         return "▋"
      end,
      highlight = { colors.nord_blue, colors.nord_blue },
   },
}

gls.left[2] = {
   statusIcon = {
      provider = function()
         return statusline_style.main_icon
      end,
      highlight = { colors.statusline_bg, colors.nord_blue },
      separator = right_separator,
      separator_highlight = { colors.nord_blue, colors.one_bg2 },
   },
}

gls.left[3] = {
   left_arow2 = {
      provider = function() end,
      separator = right_separator .. " ",
      separator_highlight = { colors.one_bg2, colors.lightbg },
   },
}

gls.left[4] = {
   FileIcon = {
      provider = "FileIcon",
      condition = condition.buffer_not_empty,
      highlight = { colors.white, colors.lightbg },
   },
}

gls.left[5] = {
   FileName = {
      provider = function()
         local fileinfo = require "galaxyline.provider_fileinfo"

         if vim.api.nvim_buf_get_name(0):len() == 0 then
            return ""
         end

         return fileinfo.get_current_file_name("", "")
      end,
      highlight = { colors.white, colors.lightbg },
      separator = right_separator,
      separator_highlight = { colors.lightbg, colors.lightbg2 },
   },
}

gls.left[6] = {
   current_dir = {
      provider = function()
         local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
         return "  " .. dir_name .. " "
      end,
      highlight = { colors.grey_fg2, colors.lightbg2 },
      separator = right_separator,
      separator_highlight = { colors.lightbg2, colors.statusline_bg },
   },
}

local checkwidth = function()
   local squeeze_width = vim.fn.winwidth(0) / 2
   if squeeze_width > 30 then
      return true
   end
   return false
end

gls.left[7] = {
   DiffAdd = {
      provider = "DiffAdd",
      condition = checkwidth,
      icon = "  ",
      highlight = { colors.white, colors.statusline_bg },
   },
}

gls.left[8] = {
   DiffModified = {
      provider = "DiffModified",
      condition = checkwidth,
      icon = "   ",
      highlight = { colors.grey_fg2, colors.statusline_bg },
   },
}

gls.left[9] = {
   DiffRemove = {
      provider = "DiffRemove",
      condition = checkwidth,
      icon = "  ",
      highlight = { colors.grey_fg2, colors.statusline_bg },
   },
}

gls.left[10] = {
   DiagnosticError = {
      provider = "DiagnosticError",
      icon = "  ",
      highlight = { colors.red, colors.statusline_bg },
   },
}

gls.left[11] = {
   DiagnosticWarn = {
      provider = "DiagnosticWarn",
      icon = "  ",
      highlight = { colors.yellow, colors.statusline_bg },
   },
}

gls.right[1] = {
   lsp_status = {
      provider = function()
         local clients = vim.lsp.get_active_clients()
         if next(clients) ~= nil then
            local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
            for _, client in ipairs(clients) do
               local filetypes = client.config.filetypes
               if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                  return " " .. "  " .. " LSP"
               end
            end
            return ""
         else
            return ""
         end
      end,
      highlight = { colors.grey_fg2, colors.statusline_bg },
   },
}

gls.right[2] = {
   GitIcon = {
      provider = function()
         return " "
      end,
      condition = require("galaxyline.condition").check_git_workspace,
      highlight = { colors.grey_fg2, colors.statusline_bg },
      separator = " ",
      separator_highlight = { colors.statusline_bg, colors.statusline_bg },
   },
}

gls.right[3] = {
   GitBranch = {
      provider = "GitBranch",
      condition = require("galaxyline.condition").check_git_workspace,
      highlight = { colors.grey_fg2, colors.statusline_bg },
   },
}

local mode_colors = {
   [110] = { "NORMAL", colors.red },
   [105] = { "INSERT", colors.dark_purple },
   [99] = { "COMMAND", colors.pink },
   [116] = { "TERMINAL", colors.green },
   [118] = { "VISUAL", colors.cyan },
   [22] = { "V-BLOCK", colors.cyan },
   [86] = { "V_LINE", colors.cyan },
   [82] = { "REPLACE", colors.orange },
   [115] = { "SELECT", colors.nord_blue },
   [83] = { "S-LINE", colors.nord_blue },
}

local mode = function(n)
   return mode_colors[vim.fn.mode():byte()][n]
end

gls.right[4] = {
   left_arrow = {
      provider = function() end,
      separator = " " .. left_separator,
      separator_highlight = { colors.one_bg2, colors.statusline_bg },
   },
}

gls.right[5] = {
   left_round = {
      provider = function()
         vim.cmd("hi Galaxyleft_round guifg=" .. mode(2))
         return left_separator
      end,
      highlight = { "GalaxyViMode", colors.one_bg2 },
   },
}

gls.right[6] = {
   viMode_icon = {
      provider = function()
         vim.cmd("hi GalaxyviMode_icon guibg=" .. mode(2))
         return statusline_style.vi_mode_icon
      end,
      highlight = { colors.statusline_bg, colors.red },
   },
}

gls.right[7] = {
   ViMode = {
      provider = function()
         vim.cmd("hi GalaxyViMode guifg=" .. mode(2))
         return "  " .. mode(1) .. " "
      end,
      highlight = { "GalaxyViMode", colors.lightbg },
   },
}

gls.right[8] = {
   left_arrow2 = {
      provider = function() end,
      separator = left_separator,
      separator_highlight = { colors.grey, colors.lightbg },
   },
}

gls.right[9] = {
   some_RoundIcon = {
      provider = function()
         return statusline_style.position_icon
      end,
      separator = left_separator,
      separator_highlight = { colors.green, colors.grey },
      highlight = { colors.lightbg, colors.green },
   },
}

gls.right[10] = {
   line_percentage = {
      provider = function()
         local current_line = vim.fn.line "."
         local total_line = vim.fn.line "$"

         if current_line == 1 then
            return "  Top "
         elseif current_line == vim.fn.line "$" then
            return "  Bot "
         end
         local result, _ = math.modf((current_line / total_line) * 100)
         return "  " .. result .. "% "
      end,
      highlight = { colors.green, colors.lightbg },
   },
}
