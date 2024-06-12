-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "kanagawa",
  statusline = {
    theme = "vscode",
    separator_style = "block",
  },
  cmp = {
    style = "flat_dark",
  },

  hl_override = {
    Boolean = { bold = true },
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.base46 = {
  integrations = {
    "cmp",
    "git",
    "treesitter",
    "devicons",
    "nvimtree",
    "dap",
    "todo",
    "trouble",
  },
}

-- M.base46.integrations = {
--   "dap",
--   "todo",
-- }

return M
