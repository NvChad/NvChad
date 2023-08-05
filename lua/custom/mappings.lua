local M = {}

M.abc = {
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    ["<C-M-Up>"] = { "<C-o>:t.<CR>", "Duplicate line above" },
    ["<C-M-Down>"] = { "<C-o>:t.<CR>", "Duplicate line below" }
  },

  v = {
    ["<C-M-Up>"] = { ":y<CR>p", "Duplicate selection above" },
    ["<C-M-Down>"] = { ":y<CR>p", "Duplicate selection below" }
  }

}

return M
