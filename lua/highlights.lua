local cmd = vim.cmd

local global_theme = "themes/" .. vim.g.nvchad_theme
local colors = require(global_theme)

local white = colors.white
local darker_black = colors.darker_black
local black = colors.black
local black2 = colors.black2
local one_bg = colors.one_bg
local one_bg2 = colors.one_bg2
local one_bg3 = colors.one_bg3
local light_grey = colors.light_grey
local grey = colors.grey
local grey_fg = colors.grey_fg
local grey_fg2 = colors.grey_fg2
local red = colors.red
local line = colors.line
local green = colors.green
local nord_blue = colors.nord_blue
local blue = colors.blue
local yellow = colors.yellow
local purple = colors.purple

-- for guifg , bg

local function fg(group, color)
    cmd("hi " .. group .. " guifg=" .. color)
end

local function bg(group, color)
    cmd("hi " .. group .. " guibg=" .. color)
end

local function fg_bg(group, fgcol, bgcol)
    cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

-- blankline

fg("IndentBlanklineChar", line)

-- misc --
fg("LineNr", grey)
fg("Comment", grey_fg)
fg("NvimInternalError", red)
fg("VertSplit", line)
fg("EndOfBuffer", black)

-- Pmenu
bg("Pmenu", one_bg)
bg("PmenuSbar", one_bg2)
bg("PmenuSel", green)
bg("PmenuThumb", nord_blue)

-- inactive statuslines as thin splitlines
cmd("hi! StatusLineNC gui=underline guifg=" .. line)

-- line n.o
cmd "hi clear CursorLine"
fg("cursorlinenr", white)

-- git signs ---
fg_bg("DiffAdd", nord_blue, "none")
fg_bg("DiffChange", grey_fg, "none")
fg_bg("DiffModified", nord_blue, "none")

-- NvimTree
fg("NvimTreeFolderIcon", blue)
fg("NvimTreeFolderName", blue)
fg("NvimTreeOpenedFolderName", blue)
fg("NvimTreeEmptyFolderName", blue)
fg("NvimTreeIndentMarker", one_bg2)
fg("NvimTreeVertSplit", darker_black)
bg("NvimTreeVertSplit", darker_black)
fg("NvimTreeEndOfBuffer", darker_black)

fg("NvimTreeRootFolder", darker_black)
bg("NvimTreeNormal", darker_black)
fg_bg("NvimTreeStatuslineNc", darker_black, darker_black)
fg_bg("NvimTreeWindowPicker", red, black2)

-- telescope
fg("TelescopeBorder", line)
fg("TelescopePromptBorder", line)
fg("TelescopeResultsBorder", line)
fg("TelescopePreviewBorder", grey)

-- LspDiagnostics ---

-- error / warnings
fg("LspDiagnosticsSignError", red)
fg("LspDiagnosticsVirtualTextError", red)
fg("LspDiagnosticsSignWarning", yellow)
fg("LspDiagnosticsVirtualTextWarning", yellow)

-- info
fg("LspDiagnosticsSignInformation", green)
fg("LspDiagnosticsVirtualTextInformation", green)

-- hint
fg("LspDiagnosticsSignHint", purple)
fg("LspDiagnosticsVirtualTextHint", purple)

-- dashboard

fg("DashboardHeader", grey_fg)
fg("DashboardCenter", grey_fg)
fg("DashboardShortcut", grey_fg)
fg("DashboardFooter", grey_fg)

-- packer's floating window

bg("NormalFloat", black2)
bg("FloatBorder", black2)
fg("FloatBorder", black2)

-- set bg color for nvim
-- bg("Normal", black)
