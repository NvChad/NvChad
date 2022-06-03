local present, feline = pcall(require, "feline")
local fn = vim.fn

local function get_color(group, attr)
   return fn.synIDattr(fn.synIDtrans(fn.hlID(group)), attr)
end

if not present then
   return
end

local options = {
   lsp = require "feline.providers.lsp",
   lsp_severity = vim.diagnostic.severity,
}

options.icons = {
   mode_icon = "  ",
   position_icon = " ",
   empty_file = " Empty ",
   dir = " ",
   clock = " ",
}

options.icon_styles = {

   -- mix of slant + round
   default = {
      left = "",
      right = " ",
   },

   round = {
      left = "",
      right = "",
   },

   block = {
      left = "█",
      right = "█",
   },

   arrow = {
      left = "",
      right = "",
   },
}

local statusline_opt = require("core.utils").load_config().plugins.options.statusline.separator_style
options.separator_style = options.icon_styles[statusline_opt]

options.mode_icon = {
   provider = options.icons.mode_icon,

   hl = function()
      return {
         fg = get_color("Feline", "bg#"),
         bg = get_color(options.mode_hlgroups[fn.mode()][2], "fg#"),
      }
   end,

   right_sep = {
      str = options.separator_style.right,
      hl = function()
         return {
            fg = get_color(options.mode_hlgroups[fn.mode()][2], "fg#"),
            bg = get_color("Feline_EmptySpace", "fg#"),
         }
      end,
   },
}

-- MODES

options.mode_hlgroups = {
   ["n"] = { "Normal", "Feline_NormalMode" },
   ["no"] = { "N-PENDING", "Feline_NormalMode" },
   ["i"] = { "INSERT", "Feline_InsertMode" },
   ["ic"] = { "INSERT", "Feline_InsertMode" },
   ["t"] = { "TERMINAL", "Feline_TerminalMode" },
   ["v"] = { "VISUAL", "Feline_VisualMode" },
   ["V"] = { "V-LINE", "Feline_VisualMode" },
   [""] = { "V-BLOCK", "Feline_VisualMode" },
   ["R"] = { "REPLACE", "Feline_ReplaceMode" },
   ["Rv"] = { "V-REPLACE", "Feline_ReplaceMode" },
   ["s"] = { "SELECT", "Feline_SelectMode" },
   ["S"] = { "S-LINE", "Feline_SelectMode" },
   [""] = { "S-BLOCK", "Feline_SelectMode" },
   ["c"] = { "COMMAND", "Feline_CommandMode" },
   ["cv"] = { "COMMAND", "Feline_CommandMode" },
   ["ce"] = { "COMMAND", "Feline_CommandMode" },
   ["r"] = { "PROMPT", "Feline_ConfirmMode" },
   ["rm"] = { "MORE", "Feline_ConfirmMode" },
   ["r?"] = { "CONFIRM", "Feline_ConfirmMode" },
   ["!"] = { "SHELL", "Feline_TerminalMode" },
}

options.vi_mode = {
   provider = function()
      return " " .. options.mode_hlgroups[fn.mode()][1] .. " "
   end,

   hl = function()
      return options.mode_hlgroups[fn.mode()][2]
   end,

   right_sep = {
      str = options.separator_style.right,
      hl = function()
         return {
            fg = get_color("Feline_EmptySpace", "bg#"),
            bg = get_color("Feline_nvim_gps", "bg#"),
         }
      end,
   },
}

options.cwd = {
   -- icon
   left_sep = {
      str = " " .. options.icons.dir,
      hl = "FelineCwd",
   },

   -- dirname
   provider = function()
      local dir_name = fn.fnamemodify(fn.getcwd(), ":t")
      return " " .. dir_name .. " "
   end,

   hl = "FelineCwd",
}

-- lsp
options.diagnostic = {
   error = {
      provider = "diagnostic_errors",
      enabled = function()
         return options.lsp.diagnostics_exist(options.lsp_severity.ERROR)
      end,

      hl = "Feline_lspError",
      icon = "  ",
   },

   warning = {
      provider = "diagnostic_warnings",
      enabled = function()
         return options.lsp.diagnostics_exist(options.lsp_severity.WARN)
      end,

      hl = "Feline_lspWarning",
      icon = "  ",
   },

   hint = {
      provider = "diagnostic_hints",
      enabled = function()
         return options.lsp.diagnostics_exist(options.lsp_severity.HINT)
      end,
      hl = "Feline_LspHints",
      icon = "  ",
   },

   info = {
      provider = "diagnostic_info",
      enabled = function()
         return options.lsp.diagnostics_exist(options.lsp_severity.INFO)
      end,
      hl = "Feline_LspInfo",
      icon = "  ",
   },
}

options.lsp_status = {
   provider = function()
      if next(vim.lsp.buf_get_clients()) ~= nil then
         local lsp_name = vim.lsp.get_active_clients()[1].name

         return "   LSP ~ " .. lsp_name .. " "
      else
         return ""
      end
   end,

   hl = "Feline_LspIcon",
}

options.lsp_progress = {
   provider = function()
      local Lsp = vim.lsp.util.get_progress_messages()[1]

      if not Lsp then
         return ""
      end

      local msg = Lsp.message or ""
      local percentage = Lsp.percentage or 0
      local title = Lsp.title or ""
      local spinners = { "", "" }

      local ms = vim.loop.hrtime() / 1000000
      local frame = math.floor(ms / 120) % #spinners

      return string.format(" %%<%s %s %s (%s%%%%) ", spinners[frame + 1], title, msg, percentage)
   end,

   hl = "Feline_LspProgress",
}

--  Git

options.diff = {
   add = {
      provider = "git_diff_added",
      hl = "Feline_diffIcons",
      icon = "   ",
   },

   change = {
      provider = "git_diff_changed",
      hl = "Feline_diffIcons",
      icon = "   ",
   },

   remove = {
      provider = "git_diff_removed",
      hl = "Feline_diffIcons",
      icon = "   ",
   },
}

options.git_branch = {
   provider = "git_branch",
   hl = "Feline_diffIcons",
   icon = "    ",

   right_sep = {
      str = " ",
      hl = "Feline_diffIcons",
   },
}

options.file_info = {
   left_sep = {
      str = options.separator_style.left,
      hl = "Feline_file_info_sep",
   },

   -- file icon
   provider = function()
      local filename = fn.expand "%:t"
      local extension = fn.expand "%:e"

      if filename == "" then
         return options.icons.empty_file
      end

      local icon = require("nvim-web-devicons").get_icon(filename, extension)

      if icon == nil then
         icon = " "
      else
         icon = icon .. " "
      end

      return icon
   end,

   hl = "Feline_file_info",

   -- file name
   right_sep = {
      str = function()
         local filename = fn.expand "%:t"
         return " " .. fn.fnamemodify(filename, ":r") .. " "
      end,

      hl = function()
         return {
            fg = get_color("Feline_file_info", "bg#"),
            bg = get_color("Feline_file_info", "fg#"),
         }
      end,
   },
}

options.nvim_gps = {
   provider = function()
      -- nvim-gps loads at cursorMoved so need to handle this
      local gps_loaded, gps = pcall(require, "nvim-gps")

      if not gps_loaded then
         return
      end

      return " " .. gps.get_location()
   end,

   enabled = function()
      local gps_loaded, gps = pcall(require, "nvim-gps")

      if not gps_loaded then
         return false
      end

      return gps.is_available()
   end,

   hl = "Feline_nvim_gps",
}

options.separator_left = {
   provider = options.separator_style.right,
   hl = "Feline_EmptySpace",
}

options.separator_right = {
   provider = options.separator_style.left,
   hl = "Feline_EmptySpace",
}

options.separator_right_file = {
   provider = options.separator_style.left,
   hl = function()
      return {
         fg = get_color("Feline_EmptySpace", "fg#"),
         bg = get_color("Feline_nvim_gps", "bg#"),
      }
   end,
}

options.time = {
   left_sep = {
      str = options.separator_style.left,
      hl = function()
         return {
            fg = get_color("Feline_time", "fg#"),
            bg = get_color("Feline_EmptySpace", "fg#"),
         }
      end,
   },

   icon = {
      str = options.icons.clock,
      hl = function()
         return {
            fg = get_color("Feline_time", "bg#"),
            bg = get_color("Feline_time", "fg#"),
         }
      end,
   },

   provider = function()
      return " " .. fn.strftime "%H:%M" .. " "
   end,

   hl = "Feline_time",
}

options.current_line = {

   left_sep = {
      str = options.separator_style.left,
      hl = "Feline_PositionSeparator",
   },

   icon = {
      str = options.icons.position_icon,
      hl = "Feline_PositionIcon",
   },

   provider = function()
      local current_line = fn.line "."
      local total_line = fn.line "$"

      if current_line == 1 then
         return " Top "
      elseif current_line == fn.line "$" then
         return " Bot "
      end
      local result, _ = math.modf((current_line / total_line) * 100)
      return " " .. result .. "%% "
   end,

   hl = "Feline_CurrentLine",
}

options = require("core.utils").load_override(options, "feline-nvim/feline.nvim")

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
add_table(options.left, options.mode_icon)
add_table(options.left, options.separator_left)
add_table(options.left, options.vi_mode)
add_table(options.left, options.cwd)

-- lsp
add_table(options.left, options.lsp_status)
add_table(options.left, options.diagnostic.error)
add_table(options.left, options.diagnostic.warning)
add_table(options.left, options.diagnostic.hint)
add_table(options.left, options.diagnostic.info)

add_table(options.middle, options.lsp_progress)
add_table(options.middle, options.nvim_gps)

-- git diffs
add_table(options.right, options.diff.add)
add_table(options.right, options.diff.change)
add_table(options.right, options.diff.remove)
add_table(options.right, options.git_branch)

add_table(options.right, options.separator_right_file)
add_table(options.right, options.file_info)

add_table(options.right, options.separator_right)
add_table(options.right, options.time)
add_table(options.right, options.separator_right)
add_table(options.right, options.current_line)

-- Initialize the components table
options.components = { active = {} }

options.components.active[1] = options.left
options.components.active[2] = options.middle
options.components.active[3] = options.right

options.theme = {
   fg = get_color("Feline", "fg#"),
   bg = get_color("Feline", "bg#"),
}

feline.setup {
   theme = options.theme,
   components = options.components,
}
