---@type ChadrcConfig
local M = {}

M.ui = { theme = 'everforest_light' }
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

vim.g.toggle_theme_icon = ""

return M
