---@type MappingsTable
local M = {}

-- Disabled NvChad core mappings
M.disabled = {
  t = {
    ["<C-x>"] = "",
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",
  },

  v = {
    ["<Up>"] = "",
    ["<Down>"] = "",
  },

  n = {
    ["<Up>"] = "",
    ["<Down>"] = "",
    ["<leader>fh"] = "",
    ["<leader>th"] = "",
    ["<leader>ma"] = "",
    ["<leader>fo"] = "",
    ["<leadr>fz"] = "",
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v"] = "",
    ["<leader>wK"] = "",
    ["<leader>wk"] = "",
    ["<leader>cc"] = "",
    ["]c"] = "",
    ["[c"] = "",
    ["<leader>rh"] = "",
    ["<leader>ph"] = "",
    ["<leader>gb"] = "",
    ["<leader>td"] = "",
  },
}

M.general = {
  t = {
    ["<ESC>"] = { "<C-\\><C-n>", "escape terminal mode", opts = { nowait = true } },
  },
}

return M
