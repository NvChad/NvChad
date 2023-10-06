local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!
M.exxtras = {
  i = {
    ["kj"] = { "<ESC>", "Exit insert mode" },
    ["<C-s>"] = { "<ESC><cmd>w<CR>", "Save and Return to Normal mode" },
  },
}

return M
