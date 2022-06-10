local fn = vim.fn

local sep_style = {
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

local user_sep_style = require("core.utils").load_config().plugins.options.statusline.separator_style
local sep_l = sep_style[user_sep_style]["left"]
local sep_r = sep_style[user_sep_style]["right"]

local modes = {
   ["n"] = { "NORMAL", "St_NormalMode" },
   ["niI"] = { "NORMAL i", "St_NormalMode" },
   ["niR"] = { "NORMAL r", "St_NormalMode" },
   ["niV"] = { "NORMAL v", "St_NormalMode" },
   ["no"] = { "N-PENDING", "St_NormalMode" },
   ["i"] = { "INSERT", "St_InsertMode" },
   ["ic"] = { "INSERT", "St_InsertMode" },
   ["ix"] = { "INSERT completion", "St_InsertMode" },
   ["t"] = { "TERMINAL", "St_TerminalMode" },
   ["nt"] = { "NTERMINAL", "St_NTerminalMode" },
   ["v"] = { "VISUAL", "St_VisualMode" },
   ["V"] = { "V-LINE", "St_VisualMode" },
   [""] = { "V-BLOCK", "St_VisualMode" },
   ["R"] = { "REPLACE", "St_ReplaceMode" },
   ["Rv"] = { "V-REPLACE", "St_ReplaceMode" },
   ["s"] = { "SELECT", "St_SelectMode" },
   ["S"] = { "S-LINE", "St_SelectMode" },
   [""] = { "S-BLOCK", "St_SelectMode" },
   ["c"] = { "COMMAND", "St_CommandMode" },
   ["cv"] = { "COMMAND", "St_CommandMode" },
   ["ce"] = { "COMMAND", "St_CommandMode" },
   ["r"] = { "PROMPT", "St_ConfirmMode" },
   ["rm"] = { "MORE", "St_ConfirmMode" },
   ["r?"] = { "CONFIRM", "St_ConfirmMode" },
   ["!"] = { "SHELL", "St_TerminalMode" },
}

local M = {}

M.mode = function()
   local m = vim.api.nvim_get_mode().mode
   local current_mode = "%#" .. modes[m][2] .. "#" .. "  " .. modes[m][1]
   local mode_sep1 = "%#" .. modes[m][2] .. "Sep" .. "#" .. sep_r

   return current_mode .. mode_sep1 .. "%#ST_EmptySpace#" .. sep_r
end

M.fileInfo = function()
   local icon = ""
   local filename = fn.fnamemodify(fn.expand "%:t", ":r")
   local extension = fn.expand "%:e"

   if filename == "" then
      icon = icon .. "  Empty "
   else
      filename = " " .. filename .. " "
   end

   local devicons_present, devicons = pcall(require, "nvim-web-devicons")

   if not devicons_present then
      return " "
   end

   local ft_icon = devicons.get_icon(filename, extension)
   icon = (ft_icon ~= nil and " " .. ft_icon) or icon

   return "%#St_file_info#" .. icon .. filename .. "%#St_file_sep#" .. sep_r
end

M.gps = function()
   if vim.o.columns < 140 or not package.loaded["nvim-gps"] then
      return ""
   end

   local gps = require "nvim-gps"
   return (gps.is_available() and gps.get_location()) or ""
end

M.git = function()
   if not vim.b.gitsigns_head or vim.b.gitsigns_git_status then
      return ""
   end

   local git_status = vim.b.gitsigns_status_dict

   local added = (git_status.added and git_status.added ~= 0) and ("  " .. git_status.added) or ""
   local changed = (git_status.changed and git_status.changed ~= 0) and ("  " .. git_status.changed) or ""
   local removed = (git_status.removed and git_status.removed ~= 0) and ("  " .. git_status.removed) or ""
   local branch_name = "   " .. git_status.head .. " "
   local git_info = branch_name .. added .. changed .. removed

   return "%#St_gitIcons#" .. git_info
end

-- LSP STUFF
M.LSP_progress = function()
   local Lsp = vim.lsp.util.get_progress_messages()[1]

   if vim.o.columns < 120 or not Lsp then
      return ""
   end

   local msg = Lsp.message or ""
   local percentage = Lsp.percentage or 0
   local title = Lsp.title or ""
   local spinners = { "", "" }
   local ms = vim.loop.hrtime() / 1000000
   local frame = math.floor(ms / 120) % #spinners
   local content = string.format(" %%<%s %s %s (%s%%%%) ", spinners[frame + 1], title, msg, percentage)

   return ("%#St_LspProgress#" .. content) or ""
end

M.LSP_Diagnostics = function()
   if not #vim.diagnostic.get(0) then
      return ""
   end

   local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
   local warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
   local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
   local info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })

   errors = (errors and errors > 0) and ("%#St_lspError#" .. " " .. errors .. " ") or ""
   warnings = (warnings and warnings > 0) and ("%#St_lspWarning#" .. "  " .. warnings .. " ") or ""
   hints = (hints and hints > 0) and ("%#St_lspHints#" .. "ﯧ " .. hints .. " ") or ""
   info = (info and info > 0) and ("%#St_lspInfo#" .. " " .. info .. " ") or ""

   return errors .. warnings .. hints .. info
end

M.LSP_status = function()
   local lsp_attached = next(vim.lsp.buf_get_clients()) ~= nil
   local content = lsp_attached and "   LSP ~ " .. vim.lsp.get_active_clients()[1].name .. " " or false
   return content and ("%#St_LspStatus#" .. content) or ""
end

M.cwd = function()
   local left_sep = "%#St_cwd_sep#" .. sep_l
   local dir_icon = "%#St_cwd_icon#" .. " "
   local dir_name = "%#St_cwd_text#" .. " " .. fn.fnamemodify(fn.getcwd(), ":t") .. " "
   return (vim.o.columns > 120 and left_sep .. dir_icon .. dir_name) or ""
end

M.cursor_position = function()
   local left_sep = "%#St_pos_sep#" .. sep_l
   local icon = "%#St_pos_icon#" .. " "

   local current_line = fn.line "."
   local total_line = fn.line "$"
   local text = math.modf((current_line / total_line) * 100) .. tostring "%%"

   if current_line == 1 then
      text = "Top "
   elseif current_line == total_line then
      text = "Bot "
   end

   return left_sep .. icon .. "%#St_pos_text#" .. " " .. text
end

M.run = function()
   return table.concat {
      M.mode(),
      M.fileInfo(),
      M.git(),

      "%=",
      M.LSP_progress(),
      M.gps(),
      "%=",

      M.LSP_Diagnostics(),
      M.LSP_status(),
      M.cwd(),
      M.cursor_position(),
   }
end

return M
