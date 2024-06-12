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
        keymaps = {
          disable_defaults = true, -- Disable the default keymaps
          view = {
            -- The `view` bindings are active in the diff buffers, only when the current
            -- tabpage is a Diffview.
            { "n", "<tab>", actions.select_next_entry, { desc = "Open the diff for the next file" } },
            {
              "n",
              "<s-tab>",
              actions.select_prev_entry,
              { desc = "Open the diff for the previous file" },
            },
            {
              "n",
              "[x",
              actions.prev_conflict,
              { desc = "jump to the prev conflict" },
            },
            {
              "n",
              "]x",
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
