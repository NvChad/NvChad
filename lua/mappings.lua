require "nvchad.mappings"

local map = vim.keymap.set
local nomap = vim.keymap.del

-- resize windows
map("n", "<c-left>", require("smart-splits").resize_left)
map("n", "<c-down>", require("smart-splits").resize_down)
map("n", "<c-up>", require("smart-splits").resize_up)
map("n", "<c-right>", require("smart-splits").resize_right)
-- moving between splits
map("n", "<C-h>", require("smart-splits").move_cursor_left, { desc = "Move left window" })
map("n", "<C-j>", require("smart-splits").move_cursor_down, { desc = "Move down window" })
map("n", "<C-k>", require("smart-splits").move_cursor_up, { desc = "Move up window" })
map("n", "<C-l>", require("smart-splits").move_cursor_right, { desc = "Move right window" })
map("n", "<C-[>", require("smart-splits").move_cursor_previous, { desc = "Move preview window" })

map("n", "\\", "<cmd>split<cr>", { desc = "New horizontal split" })
map("n", "|", "<cmd>vsplit<cr>", { desc = "New vertical split" })
-- telescope
map("n", "<leader>fF", function()
  require("telescope.builtin").find_files { hidden = true, no_ignore = true }
end, { desc = "Find all files" })
map("n", "<leader>fa", function()
  require("telescope.builtin").find_files {
    prompt_title = "Config File Nvim",
    cwd = vim.fn.stdpath "config",
    follow = true,
  }
end, { desc = "Find config files nvim" })

-- Flash search
map("n", "s", function()
  require("flash").jump {
    remote_op = {
      restore = true,
      motion = nil,
    },
  }
end, { desc = "Flash" })
map("n", "S", function()
  require("flash").treesitter()
end, { desc = "Flash" })
map("x", "s", function()
  require("flash").jump {
    remote_op = {
      restore = true,
      motion = nil,
    },
  }
end, { desc = "Flash" })
map("x", "S", function()
  require("flash").treesitter()
end, { desc = "Flash" })
map("o", "s", function()
  require("flash").jump {
    remote_op = {
      restore = true,
      motion = nil,
    },
  }
end, { desc = "Flash" })
map("o", "S", function()
  require("flash").treesitter()
end, { desc = "Flash" })
map("o", "R", function()
  require("flash").remote()
end, { desc = "Flash remote" })
map("x", "r", function()
  require("flash").treesitter_search()
end, { desc = "Treesitter search" })
map("o", "r", function()
  require("flash").treesitter_search()
end, { desc = "Treesitter search" })

map({ "n", "v" }, "<leader>yy", '"+y', { desc = "Copy to clipboard system" })
map("n", "<leader>pp", '"+gP', { desc = "Paste from clipboard system" })

-- Test
map("n", "<leader>tt", require("neotest").run.run, { desc = "Run test" })
map("n", "<leader>td", function()
  require("neotest").run.run { strategy = "dap" }
end, { desc = "Debug test" })
map("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand "%")
end, { desc = "Run all test file" })
map("n", "<leader>ts", require("neotest").summary.toggle, { desc = "Summary test" })
map("n", "<leader>tp", require("neotest").output.open, { desc = "Preview test" })
map("n", "<leader>tP", require("neotest").output_panel.toggle, { desc = "Preview all test" })
map("n", "[t", require("neotest").jump.prev, { desc = "Jump prev test" })
map("n", "]t", require("neotest").jump.next, { desc = "Jump next test" })

-- nomap("n", "<leader>gb")
map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Git branchs" })
map("n", "<leader>gp", require("gitsigns").preview_hunk_inline, { desc = "preview hunk inline" })
map("n", "<leader>gP", require("gitsigns").preview_hunk, { desc = "preview hunk" })
map("n", "<leader>gd", function()
  if next(require("diffview.lib").views) == nil then
    vim.cmd "DiffviewOpen"
  else
    vim.cmd "DiffviewClose"
  end
end, { desc = "Git diff" })

-- Disable mappings
nomap("n", "<leader>rn")
nomap("n", "<leader>cc")
nomap("n", "<leader>ch")
nomap("n", "<leader>cm")

map("n", "<leader>c", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Close buffer" })

-- Toggles
map("n", "<leader>un", function()
  require("toggles").number()
end, { desc = "Toggle numbers" })
map("n", "<leader>us", function()
  require("toggles").spell()
end, { desc = "Toggle spell" })
map("n", "<leader>uw", function()
  require("toggles").wrap()
end, { desc = "Toggle spell" })

map("n", "<leader>q", "<cmd>q!<cr>", { desc = "Quit window" })
