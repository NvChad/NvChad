---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["f"] = { ":lua vim.lsp.buf.format() <CR>", "auto formats code", opts = { nowait = true }},
  },
}

-- more keybinds!

return M
