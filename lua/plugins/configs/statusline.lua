local present, feline = pcall(require, "feline")

if not present then
   return
end

local options = {
   colors = require("base46").get_colors "base_30",
   lsp = require "feline.providers.lsp",
   lsp_severity = vim.diagnostic.severity,
}

options.icon_styles = {
   default = {
      left = "",
      right = " ",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },
   arrow = {
      left = "",
      right = "",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },

   block = {
      left = " ",
      right = " ",
      main_icon = "   ",
      vi_mode_icon = "  ",
      position_icon = "  ",
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
}

options.separator_style = options.icon_styles[nvchad.load_config().plugins.options.statusline.separator_style]

options.main_icon = {
   provider = options.separator_style.main_icon,

   hl = {
      fg = options.colors.statusline_bg,
      bg = options.colors.nord_blue,
   },

   right_sep = {
      str = options.separator_style.right,
      hl = {
         fg = options.colors.nord_blue,
         bg = options.colors.lightbg,
      },
   },
}

options.file_name = {
   provider = function()
      local filename = vim.fn.expand "%:t"
      local extension = vim.fn.expand "%:e"
      local icon = require("nvim-web-devicons").get_icon(filename, extension)
      if icon == nil then
         icon = " "
         return icon
      end
      return " " .. icon .. " " .. filename .. " "
   end,
   hl = {
      fg = options.colors.white,
      bg = options.colors.lightbg,
   },

   right_sep = {
      str = options.separator_style.right,
      hl = { fg = options.colors.lightbg, bg = options.colors.lightbg2 },
   },
}

options.dir_name = {
   provider = function()
      local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
      return "  " .. dir_name .. " "
   end,

   hl = {
      fg = options.colors.grey_fg2,
      bg = options.colors.lightbg2,
   },
   right_sep = {
      str = options.separator_style.right,
      hi = {
         fg = options.colors.lightbg2,
         bg = options.colors.statusline_bg,
      },
   },
}

options.diff = {
   add = {
      provider = "git_diff_added",
      hl = {
         fg = options.colors.grey_fg2,
         bg = options.colors.statusline_bg,
      },
      icon = " ",
   },

   change = {
      provider = "git_diff_changed",
      hl = {
         fg = options.colors.grey_fg2,
         bg = options.colors.statusline_bg,
      },
      icon = "  ",
   },

   remove = {
      provider = "git_diff_removed",
      hl = {
         fg = options.colors.grey_fg2,
         bg = options.colors.statusline_bg,
      },
      icon = "  ",
   },
}

options.git_branch = {
   provider = "git_branch",
   hl = {
      fg = options.colors.grey_fg2,
      bg = options.colors.statusline_bg,
   },
   icon = "  ",
}

options.diagnostic = {
   error = {
      provider = "diagnostic_errors",
      enabled = function()
         return options.lsp.diagnostics_exist(options.lsp_severity.ERROR)
      end,

      hl = { fg = options.colors.red },
      icon = "  ",
   },

   warning = {
      provider = "diagnostic_warnings",
      enabled = function()
         return options.lsp.diagnostics_exist(options.lsp_severity.WARN)
      end,
      hl = { fg = options.colors.yellow },
      icon = "  ",
   },

   hint = {
      provider = "diagnostic_hints",
      enabled = function()
         return options.lsp.diagnostics_exist(options.lsp_severity.HINT)
      end,
      hl = { fg = options.colors.grey_fg2 },
      icon = "  ",
   },

   info = {
      provider = "diagnostic_info",
      enabled = function()
         return options.lsp.diagnostics_exist(options.lsp_severity.INFO)
      end,
      hl = { fg = options.colors.green },
      icon = "  ",
   },
}

options.lsp_progress = {
   provider = function()
      local Lsp = vim.lsp.util.get_progress_messages()[1]

      if Lsp then
         local msg = Lsp.message or ""
         local percentage = Lsp.percentage or 0
         local title = Lsp.title or ""
         local spinners = {
            "",
            "",
            "",
         }

         local success_icon = {
            "",
            "",
            "",
         }

         local ms = vim.loop.hrtime() / 1000000
         local frame = math.floor(ms / 120) % #spinners

         if percentage >= 70 then
            return string.format(" %%<%s %s %s (%s%%%%) ", success_icon[frame + 1], title, msg, percentage)
         end

         return string.format(" %%<%s %s %s (%s%%%%) ", spinners[frame + 1], title, msg, percentage)
      end

      return ""
   end,
   hl = { fg = options.colors.green },
}

options.lsp_icon = {
   provider = function()
      if next(vim.lsp.buf_get_clients()) ~= nil then
         return "   LSP"
      else
         return ""
      end
   end,
   hl = { fg = options.colors.grey_fg2, bg = options.colors.statusline_bg },
}

options.mode_colors = {
   ["n"] = { "NORMAL", options.colors.red },
   ["no"] = { "N-PENDING", options.colors.red },
   ["i"] = { "INSERT", options.colors.dark_purple },
   ["ic"] = { "INSERT", options.colors.dark_purple },
   ["t"] = { "TERMINAL", options.colors.green },
   ["v"] = { "VISUAL", options.colors.cyan },
   ["V"] = { "V-LINE", options.colors.cyan },
   [""] = { "V-BLOCK", options.colors.cyan },
   ["R"] = { "REPLACE", options.colors.orange },
   ["Rv"] = { "V-REPLACE", options.colors.orange },
   ["s"] = { "SELECT", options.colors.nord_blue },
   ["S"] = { "S-LINE", options.colors.nord_blue },
   [""] = { "S-BLOCK", options.colors.nord_blue },
   ["c"] = { "COMMAND", options.colors.pink },
   ["cv"] = { "COMMAND", options.colors.pink },
   ["ce"] = { "COMMAND", options.colors.pink },
   ["r"] = { "PROMPT", options.colors.teal },
   ["rm"] = { "MORE", options.colors.teal },
   ["r?"] = { "CONFIRM", options.colors.teal },
   ["!"] = { "SHELL", options.colors.green },
}

options.chad_mode_hl = function()
   return {
      fg = options.mode_colors[vim.fn.mode()][2],
      bg = options.colors.one_bg,
   }
end

options.empty_space = {
   provider = " " .. options.separator_style.left,
   hl = {
      fg = options.colors.one_bg2,
      bg = options.colors.statusline_bg,
   },
}

-- this matches the vi mode color
options.empty_spaceColored = {
   provider = options.separator_style.left,
   hl = function()
      return {
         fg = options.mode_colors[vim.fn.mode()][2],
         bg = options.colors.one_bg2,
      }
   end,
}

options.mode_icon = {
   provider = options.separator_style.vi_mode_icon,
   hl = function()
      return {
         fg = options.colors.statusline_bg,
         bg = options.mode_colors[vim.fn.mode()][2],
      }
   end,
}

options.empty_space2 = {
   provider = function()
      return " " .. options.mode_colors[vim.fn.mode()][1] .. " "
   end,
   hl = options.chad_mode_hl,
}

options.separator_right = {
   provider = options.separator_style.left,
   hl = {
      fg = options.colors.grey,
      bg = options.colors.one_bg,
   },
}

options.separator_right2 = {
   provider = options.separator_style.left,
   hl = {
      fg = options.colors.green,
      bg = options.colors.grey,
   },
}

options.position_icon = {
   provider = options.separator_style.position_icon,
   hl = {
      fg = options.colors.black,
      bg = options.colors.green,
   },
}

options.current_line = {
   provider = function()
      local current_line = vim.fn.line "."
      local total_line = vim.fn.line "$"

      if current_line == 1 then
         return " Top "
      elseif current_line == vim.fn.line "$" then
         return " Bot "
      end
      local result, _ = math.modf((current_line / total_line) * 100)
      return " " .. result .. "%% "
   end,

   hl = {
      fg = options.colors.green,
      bg = options.colors.one_bg,
   },
}

options = nvchad.load_override(options, "feline-nvim/feline.nvim")

local function add_table(tbl, inject)
   if inject then
      table.insert(tbl, inject)
   end
end

-- components are divided in 3 sections
options.left = {}
options.middle = {}
options.right = {}

-- left
add_table(options.left, options.main_icon)
add_table(options.left, options.file_name)
add_table(options.left, options.dir_name)
add_table(options.left, options.diff.add)
add_table(options.left, options.diff.change)
add_table(options.left, options.diff.remove)
add_table(options.left, options.diagnostic.error)
add_table(options.left, options.diagnostic.warning)
add_table(options.left, options.diagnostic.hint)
add_table(options.left, options.diagnostic.info)

add_table(options.middle, options.lsp_progress)

-- right
add_table(options.right, options.lsp_icon)
add_table(options.right, options.git_branch)
add_table(options.right, options.empty_space)
add_table(options.right, options.empty_spaceColored)
add_table(options.right, options.mode_icon)
add_table(options.right, options.empty_space2)
add_table(options.right, options.separator_right)
add_table(options.right, options.separator_right2)
add_table(options.right, options.position_icon)
add_table(options.right, options.current_line)

-- Initialize the components table
options.components = { active = {} }

options.components.active[1] = options.left
options.components.active[2] = options.middle
options.components.active[3] = options.right

options.theme = {
   bg = options.colors.statusline_bg,
   fg = options.colors.fg,
}

feline.setup {
   theme = options.theme,
   components = options.components,
}
