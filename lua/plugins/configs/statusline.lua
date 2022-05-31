local present, feline = pcall(require, "feline")

if not present then
   return
end

local options = {
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

options.separator_style =
   options.icon_styles[require("core.utils").load_config().plugins.options.statusline.separator_style]

options.main_icon = {
   provider = options.separator_style.main_icon,

   hl = "FelineIcon",

   right_sep = {
      str = options.separator_style.right,
      hl = "FelineIconSeparator",
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

   hl = "FelineFileName",

   right_sep = {
      str = options.separator_style.right,
      hl = "FelineFileName_Separator",
   },
}

options.dir_name = {
   provider = function()
      local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
      return "  " .. dir_name .. " "
   end,

   hl = "FelineDirName",

   right_sep = {
      str = options.separator_style.right,
      hl = "FelineDirName_Separator",
   },
}

--  Git

options.diff = {
   add = {
      provider = "git_diff_added",
      hl = "Feline_diffIcons",
      icon = " ",
   },

   change = {
      provider = "git_diff_changed",
      hl = "Feline_diffIcons",

      icon = "  ",
   },

   remove = {
      provider = "git_diff_removed",
      hl = "Feline_diffIcons",
      icon = "  ",
   },
}

options.git_branch = {
   provider = "git_branch",
   hl = "Feline_diffIcons",
   icon = "  ",
}

options.empty_space_git = {
   provider = " " .. options.separator_style.left,
   hl = "Feline_EmptySpace_git",
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

options.lsp_icon = {
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

      if Lsp then
         local msg = Lsp.message or ""
         local percentage = Lsp.percentage or 0
         local title = Lsp.title or ""
         local spinners = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }

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
   hl = "Feline_LspProgress",
}

-- MODES

options.mode_hlgroups = {
   ["n"] = { "NORMAL", "Feline_NormalMode" },
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

local fn = vim.fn

local function get_color(group, attr)
   return fn.synIDattr(fn.synIDtrans(fn.hlID(group)), attr)
end

options.empty_space = {
   provider = " " .. options.separator_style.left,
   hl = "Feline_EmptySpace",
}

-- this matches the vi mode color
options.empty_spaceColored = {
   provider = options.separator_style.left,
   hl = function()
      return {
         fg = get_color(options.mode_hlgroups[vim.fn.mode()][2], "fg#"),
         bg = get_color("Feline_EmptySpace", "bg#"),
      }
   end,
}

options.mode_icon = {
   provider = options.separator_style.vi_mode_icon,

   hl = function()
      return {
         fg = get_color("Feline", "bg#"),
         bg = get_color(options.mode_hlgroups[vim.fn.mode()][2], "fg#"),
      }
   end,
}

options.mode_name = {
   provider = function()
      return " " .. options.mode_hlgroups[vim.fn.mode()][1] .. " "
   end,
   hl = function()
      return options.mode_hlgroups[vim.fn.mode()][2]
   end,
}

options.separator_right = {
   provider = options.separator_style.left,
   hl = "Feline_EmptySpace",
}

options.separator_right2 = {
   provider = options.separator_style.left,
   hl = "Feline_PositionSeparator",
}

options.position_icon = {
   provider = options.separator_style.position_icon,
   hl = "Feline_PositionIcon",
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
add_table(options.left, options.main_icon)
add_table(options.left, options.file_name)
add_table(options.left, options.dir_name)

-- lsp
add_table(options.left, options.lsp_icon)
add_table(options.left, options.diagnostic.error)
add_table(options.left, options.diagnostic.warning)
add_table(options.left, options.diagnostic.hint)
add_table(options.left, options.diagnostic.info)

add_table(options.middle, options.lsp_progress)

-- right

-- git diffs
add_table(options.right, options.diff.add)
add_table(options.right, options.diff.change)
add_table(options.right, options.diff.remove)
add_table(options.right, options.git_branch)
add_table(options.right, options.empty_space_git)

add_table(options.right, options.empty_spaceColored)
add_table(options.right, options.mode_icon)
add_table(options.right, options.mode_name)
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
   fg = get_color("Feline", "fg#"),
   bg = get_color("Feline", "bg#"),
}

feline.setup {
   theme = options.theme,
   components = options.components,
}
