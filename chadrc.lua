---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "everforest_light",
  statusline = {
    theme = "vscode_colored",
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

vim.g.toggle_theme_icon = ""

return M
