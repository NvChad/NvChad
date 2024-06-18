return {
  {
    "tpope/vim-fugitive",
    cmd = { "G", "Git", "Gdiff" },
  },
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen" },
    opts = function()
      local actions = require "diffview.actions"
      return {
        enhanced_diff_hl = true,
        hooks = {
          diff_buf_read = function(bufnr)
            vim.opt_local.wrap = false
            vim.opt_local.list = false
            vim.opt_local.colorcolumn = { 80 }
          end,
        },
        keymaps = {
          disable_defaults = true, -- Disable the default keymaps
          file_panel = {
            ["<tab>"] = false,
          },
          view = {
            {
              "n",
              "<tab>",
              actions.select_next_entry,
              { desc = "Open the diff for the next file" },
            },
            {
              "n",
              "<s-tab>",
              actions.select_prev_entry,
              { desc = "Open the diff for the previous file" },
            },
            {
              "n",
              "[d",
              actions.prev_conflict,
              { desc = "jump to the prev conflict" },
            },
            {
              "n",
              "]d",
              actions.next_conflict,
              { desc = "jump to the next conflict" },
            },
            {
              "n",
              "<leader>g>",
              actions.conflict_choose "ours",
              { desc = "Choose the OURS vers of a conflict" },
            },
            {
              "n",
              "<leader>g<",
              actions.conflict_choose "theirs",
              { desc = "Choose the THEIRS ver of a conflict" },
            },
            {
              "n",
              "<leader>gb",
              actions.conflict_choose "base",
              { desc = "Choose the BASE vers of a conflict" },
            },
            {
              "n",
              "<leader>ga",
              actions.conflict_choose "all",
              { desc = "Choose all the vers of a conflict" },
            },
          },
        },
      }
    end,
  },
}
