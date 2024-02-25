local map = vim.keymap.set

map("i", "<C-b>", "<ESC>^i", { desc = "Beginning of line | general" })
map("i", "<C-e>", "<End>", { desc = "End of line | general" })
map("i", "<C-h>", "<Left>", { desc = "Move left | general" })
map("i", "<C-l>", "<Right>", { desc = "Move right | general" })
map("i", "<C-j>", "<Down>", { desc = "Move down | general" })
map("i", "<C-k>", "<Up>", { desc = "Move up | general" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear highlights | general" })
map("n", "<C-h>", "<C-w>h", { desc = "Window left | general" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right | general" })
map("n", "<C-j>", "<C-w>j", { desc = "Window down | general" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up | general" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file | general" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "Copy whole file | general" })
map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "Toggle line number | general" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "Toggle relative number | general" })
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "New buffer | general" })
map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "Mapping cheatsheet | general" })

map("n", "<leader>fm", function()
  vim.lsp.buf.format { async = true }
end, { desc = "LSP formatting | lsp" })

vim.keymap.set("n", "<leader>lf", vim.diagnostic.open_float, { desc = "floating diagnostics | lsp" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "prev diagnostic | lsp" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "next diagnostic | lsp" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "diagnostic loclist | lsp" })

-- Mappings for terminal mode
map(
  "t",
  "<C-x>",
  vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true),
  { desc = "Escape terminal mode | general" }
)

-- Mappings for M.tabufline
if vim.g.tabufline_maps then
  map("n", "<tab>", function()
    require("nvchad.tabufline").tabuflineNext()
  end, { desc = "Goto next buffer | tabufline" })

  map("n", "<S-tab>", function()
    require("nvchad.tabufline").tabuflinePrev()
  end, { desc = "Goto prev buffer | tabufline" })

  map("n", "<leader>x", function()
    require("nvchad.tabufline").close_buffer()
  end, { desc = "Close buffer | tabufline" })
end

if vim.g.comment_maps then
  map("n", "<leader>/", function()
    require("Comment.api").toggle.linewise.current()
  end, { desc = "Toggle comment | comment" })

  map(
    "v",
    "<leader>/",
    "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
    { desc = "Toggle comment | comment" }
  )
end

if vim.g.nvimtree_maps then
  map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle nvimtree | nvimtree" })
  map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "Focus nvimtree | nvimtree" })
end

if vim.g.telescope_maps then
  map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Live grep | telescope" })
  map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers | telescope" })
  map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help page | telescope" })
  map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "Find oldfiles | telescope" })

  map(
    "n",
    "<leader>fz",
    "<cmd>Telescope current_buffer_fuzzy_find<CR>",
    { desc = "Find in current buffer | telescope" }
  )

  map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "Git commits | telescope" })
  map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "Git status | telescope" })
  map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "Pick hidden term | telescope" })
  map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "Nvchad themes | telescope" })

  map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files | telescope" })
  map(
    "n",
    "<leader>fa",
    "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
    { desc = "Find all | telescope" }
  )
end

-- Mappings for M.terminal
if vim.g.terminal_maps then
  map("n", "<leader>h", function()
    require("nvchad.term").new { pos = "sp", size = 0.3 }
  end, { desc = "New horizontal term | terminal" })

  map("n", "<leader>v", function()
    require("nvchad.term").new { pos = "vsp", size = 0.3 }
  end, { desc = "New vertical term | terminal" })

  map({ "n", "t" }, "<A-v>", function()
    require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm", size = 0.3 }
  end, { desc = "Toggleable vertical term | terminal" })

  map({ "n", "t" }, "<A-h>", function()
    require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm", size = 0.2 }
  end, { desc = "New horizontal term | terminal" })

  map({ "n", "t" }, "<A-i>", function()
    require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
  end, { desc = "Toggleable Floating term | terminal" })

  map("t", "<ESC>", function()
    local win = vim.api.nvim_get_current_win()
    vim.api.nvim_win_close(win, true)
  end, { desc = "Close term in terminal mode | terminal" })
end

if vim.g.whichkey_maps then
  map("n", "<leader>wK", ":WhichKey <CR>", { desc = "Which-key all keymaps | whichkey" })

  map("n", "<leader>wk", function()
    vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
  end, { desc = "Which-key query lookup | whichkey" })
end

if vim.g.blankline_maps then
  map("n", "<leader>cc", function()
    local config = { scope = {} }
    config.scope.exclude = { language = {}, node_type = {} }
    config.scope.include = { node_type = {} }
    local node = require("ibl.scope").get(vim.api.nvim_get_current_buf(), config)

    if node then
      local start_row, _, end_row, _ = node:range()
      if start_row ~= end_row then
        vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start_row + 1, 0 })
        vim.api.nvim_feedkeys("_", "n", true)
      end
    end
  end, { desc = "Jump to current context | blankline" })
end

pcall(require, "custom.mappings")
