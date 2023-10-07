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
  n = {
    ["<C-t>"] = { ":TroubleToggle<CR>", "Trouble Sidebar" },
    -- Press F4 to find and replace
    ["<F4>"] = { ":%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i", "Find and Replace" },
    ["<C-z>"] = { "u", "Undo" },
    -- toggle line numbers with <leader>ln (leader is space)
    ["<leader>ln"] = { ":set number<CR>", "Toggle line numbers" },
    ["<C-s>"] = { ":wa<CR>", "Quick save all" },
  },
  -- insert mode
  i = {
    ["kj"] = { "<ESC>", "Exit insert mode" },
    -- Ctrl-v to paste
    ["<C-v>"] = { "<ESC>pa", "Paste" },
    -- Ctrl-z to undo (like in terminal)
    ["<C-z>"] = { "<ESC>ua", "Undo" },
    -- Ctrl-Shift- right arrow to select word (<ESC>wviw)
    ["<C-S-Right>"] = { "<ESC>wviw", "Select word" },
    ["<C-s>"] = { "<ESC><cmd>w<CR>", "Save and Return to Normal mode" },
  },
  -- visual mode
  v = {
    -- Ctrl-x to cut
    ["<C-x>"] = { "x", "Cut" },
  },
  t = {
    -- Map Esc to Ctrl-\ Ctrl=n
    ["<Esc>"] = { "<C-\\><C-n>", "Exit terminal" },
    ["<C-t>"] = { ":TroubleToggle<CR>", "Trouble Sidebar" },
  },
}

return M
