---@type MappingsTable
local M = {}

M.general = {
  t = {
    ["<ESC>"] = { "<C-\\><C-n>", "escape terminal mode", opts = { nowait = true } },
  },
}

return M
