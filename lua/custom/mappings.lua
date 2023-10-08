---@type MappingsTable
local M = {}

M.accelerated_jk = {
  n = {
    j = { "<Plug>(accelerated_jk_j)", "accelerated j movement" },
    k = { "<Plug>(accelerated_jk_k)", "accelerated k movement" },
  },
}

M.general = {
  t = {
    ["<ESC>"] = { "<C-\\><C-n>", "escape terminal mode", opts = { nowait = true } },
  },
}

return M
