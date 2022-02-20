local cmd = vim.cmd

local override = require("core.utils").load_config().ui.hl_override
local colors = require("colors").get()
local ui = require("core.utils").load_config().ui

local black = colors.black
local black2 = colors.black2
local blue = colors.blue
local darker_black = colors.darker_black
local folder_bg = colors.folder_bg
local green = colors.green
local grey = colors.grey
local grey_fg = colors.grey_fg
local light_grey = colors.light_grey
local line = colors.line
local nord_blue = colors.nord_blue
local one_bg = colors.one_bg
local one_bg2 = colors.one_bg2
local pmenu_bg = colors.pmenu_bg
local purple = colors.purple
local red = colors.red
local white = colors.white
local yellow = colors.yellow
local orange = colors.orange
local one_bg3 = colors.one_bg3

-- functions for setting highlights
local fg = require("core.utils").fg
local fg_bg = require("core.utils").fg_bg
local bg = require("core.utils").bg

-- Comments
if ui.italic_comments then
   fg("Comment", grey_fg .. " gui=italic")
else
   fg("Comment", grey_fg)
end

-- Disable cursor line
cmd "hi clear CursorLine"
-- Line number
fg("cursorlinenr", white)

-- same it bg, so it doesn't appear
fg("EndOfBuffer", black)

-- For floating windows
fg("FloatBorder", blue)
bg("NormalFloat", darker_black)

-- Pmenu
bg("Pmenu", one_bg)
bg("PmenuSbar", one_bg2)
bg("PmenuSel", pmenu_bg)
bg("PmenuThumb", nord_blue)
fg("CmpItemAbbr", white)
fg("CmpItemAbbrMatch", white)
fg("CmpItemKind", white)
fg("CmpItemMenu", white)

-- misc

-- inactive statuslines as thin lines
fg("StatusLineNC", one_bg3 .. " gui=underline")

fg("LineNr", grey)
fg("NvimInternalError", red)
fg("VertSplit", one_bg2)

if ui.transparency then
   bg("Normal", "NONE")
   bg("Folded", "NONE")
   fg("Folded", "NONE")
   fg("Comment", grey)
end

-- [[ Plugin Highlights

-- Dashboard
fg("AlphaHeader", grey_fg)
fg("AlphaButtons", light_grey)

-- Git signs
fg_bg("DiffAdd", blue, "NONE")
fg_bg("DiffChange", grey_fg, "NONE")
fg_bg("DiffChangeDelete", red, "NONE")
fg_bg("DiffModified", red, "NONE")
fg_bg("DiffDelete", red, "NONE")

-- Indent blankline plugin
fg("IndentBlanklineChar", line)
fg("IndentBlanklineSpaceChar", line)

-- Lsp diagnostics

fg("DiagnosticHint", purple)
fg("DiagnosticError", red)
fg("DiagnosticWarn", yellow)
fg("DiagnosticInformation", green)

-- NvimTree
fg("NvimTreeEmptyFolderName", folder_bg)
fg("NvimTreeEndOfBuffer", darker_black)
fg("NvimTreeFolderIcon", folder_bg)
fg("NvimTreeFolderName", folder_bg)
fg("NvimTreeGitDirty", red)
fg("NvimTreeIndentMarker", one_bg2)
bg("NvimTreeNormal", darker_black)
bg("NvimTreeNormalNC", darker_black)
fg("NvimTreeOpenedFolderName", folder_bg)
fg("NvimTreeRootFolder", red .. " gui=underline") -- enable underline for root folder in nvim tree
fg_bg("NvimTreeStatuslineNc", darker_black, darker_black)
fg_bg("NvimTreeVertSplit", darker_black, darker_black)
fg_bg("NvimTreeWindowPicker", red, black2)

-- Telescope
fg_bg("TelescopeBorder", darker_black, darker_black)
fg_bg("TelescopePromptBorder", black2, black2)

fg_bg("TelescopePromptNormal", white, black2)
fg_bg("TelescopePromptPrefix", red, black2)

bg("TelescopeNormal", darker_black)

fg_bg("TelescopePreviewTitle", black, green)
fg_bg("TelescopePromptTitle", black, red)
fg_bg("TelescopeResultsTitle", darker_black, darker_black)

bg("TelescopeSelection", black2)

-- keybinds cheatsheet

fg_bg("CheatsheetBorder", black, black)
bg("CheatsheetSectionContent", black)
fg("CheatsheetHeading", white)

local section_title_colors = {
   white,
   blue,
   red,
   green,
   yellow,
   purple,
   orange,
}
for i, color in ipairs(section_title_colors) do
   vim.cmd("highlight CheatsheetTitle" .. i .. " guibg = " .. color .. " guifg=" .. black)
end

-- Disable some highlight in nvim tree if transparency enabled
if ui.transparency then
   bg("NormalFloat", "NONE")
   bg("NvimTreeNormal", "NONE")
   bg("NvimTreeNormalNC", "NONE")
   bg("NvimTreeStatusLineNC", "NONE")
   fg_bg("NvimTreeVertSplit", grey, "NONE")

   -- telescope
   bg("TelescopeBorder", "NONE")
   bg("TelescopePrompt", "NONE")
   bg("TelescopeResults", "NONE")
   bg("TelescopePromptBorder", "NONE")
   bg("TelescopePromptNormal", "NONE")
   bg("TelescopeNormal", "NONE")
   bg("TelescopePromptPrefix", "NONE")
   fg("TelescopeBorder", one_bg)
   fg_bg("TelescopeResultsTitle", black, blue)
end

if #override ~= 0 then
   require(override)
end
