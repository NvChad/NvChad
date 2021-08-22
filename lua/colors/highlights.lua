local cmd = vim.cmd

local colors = require("colors").get()

local black = colors.black
local black2 = colors.black2
local blue = colors.blue
local darker_black = colors.darker_black
local folder_bg = colors.folder_bg
local green = colors.green
local grey = colors.grey
local grey_fg = colors.grey_fg
local line = colors.line
local nord_blue = colors.nord_blue
local one_bg = colors.one_bg
local one_bg2 = colors.one_bg2
local pmenu_bg = colors.pmenu_bg
local purple = colors.purple
local red = colors.red
local white = colors.white
local yellow = colors.yellow

local ui = require("core.utils").load_config().ui

local function bg(group, color)
   cmd("hi " .. group .. " guibg=" .. color)
end

local function fg(group, color)
   cmd("hi " .. group .. " guifg=" .. color)
end

local function fg_bg(group, fgcol, bgcol)
   cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

-- Comments
if ui.italic_comments then
   fg("Comment", grey_fg .. " gui=italic")
else
   fg("Comment", grey_fg)
end

cmd "hi clear CursorLine" -- disable cusror line
fg("cursorlinenr", white) -- line number

-- same it bg, so it doesn't appear
fg("EndOfBuffer", black)

-- For floating windows
fg("FloatBorder", blue)
bg("NormalFloat", one_bg)

-- Pmenu
bg("Pmenu", one_bg)
bg("PmenuSbar", one_bg2)
bg("PmenuSel", pmenu_bg)
bg("PmenuThumb", nord_blue)

-- misc
fg("LineNr", grey)

fg("NvimInternalError", red)

-- inactive statuslines as thin splitlines
fg("StatusLineNC", line .. " gui=underline")

fg("VertSplit", line)
-- fg_bg("Visual",light_grey, colors.lightbg)

if ui.transparency then
   bg("Normal", "NONE")
   bg("Folded", "NONE")
   fg("Folded", "NONE")
   fg("Comment", grey)
end

----- plugin related highlights -----

-- dashboard --
fg("DashboardCenter", grey_fg)
fg("DashboardFooter", grey_fg)
fg("DashboardHeader", grey_fg)
fg("DashboardShortcut", grey_fg)

-- git signs --
fg_bg("DiffAdd", nord_blue, "none")
fg_bg("DiffChange", grey_fg, "none")
fg_bg("DiffModified", nord_blue, "none")

-- indent blankline plugin --
fg("IndentBlanklineChar", line)

-- LspDiagnostics --
-- error / warnings
fg("LspDiagnosticsSignError", red)
fg("LspDiagnosticsSignWarning", yellow)
fg("LspDiagnosticsVirtualTextError", red)
fg("LspDiagnosticsVirtualTextWarning", yellow)

-- info
fg("LspDiagnosticsSignInformation", green)
fg("LspDiagnosticsVirtualTextInformation", green)

-- hints
fg("LspDiagnosticsSignHint", purple)
fg("LspDiagnosticsVirtualTextHint", purple)

-- NvimTree --
fg("NvimTreeEmptyFolderName", blue)
fg("NvimTreeEndOfBuffer", darker_black)
fg("NvimTreeFolderIcon", folder_bg)
fg("NvimTreeFolderName", folder_bg)
fg("NvimTreeGitDirty", red)
fg("NvimTreeIndentMarker", one_bg2)
bg("NvimTreeNormal", darker_black)
fg("NvimTreeOpenedFolderName", blue)
fg("NvimTreeRootFolder", red .. " gui=underline") -- enable underline for root folder in nvim tree
fg_bg("NvimTreeStatuslineNc", darker_black, darker_black)
fg("NvimTreeVertSplit", darker_black)
bg("NvimTreeVertSplit", darker_black)
fg_bg("NvimTreeWindowPicker", red, black2)
-- disable some highlight in nvim tree if transparency enabled
if ui.transparency then
   bg("NvimTreeNormal", "NONE")
   bg("NvimTreeStatusLineNC", "NONE")
   bg("NvimTreeVertSplit", "NONE")
   fg("NvimTreeVertSplit", grey)
end

-- telescope --
fg("TelescopeBorder", line)
fg("TelescopePreviewBorder", grey)
fg("TelescopePromptBorder", line)
fg("TelescopeResultsBorder", line)
