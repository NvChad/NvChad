local options = {
  signs = {
    add = { text = "│" },
    change = { text = "│" },
    delete = { text = "󰍵" },
    topdelete = { text = "‾" },
    changedelete = { text = "~" },
    untracked = { text = "│" },
  },

  on_attach = function(bufnr)
    local gs = package.loaded.gitsigns

    local function opts(desc)
      return { buffer = bufnr, desc = desc }
    end

    local map = vim.keymap.set
    map("n", "]h", gs.next_hunk, opts "Next hunk")
    map("n", "[h", gs.prev_hunk, opts "Prev hunk")
    map("n", "<leader>gL", function()
      gs.blame_line { full = true }
    end, opts "Blame full")
    map("n", "<leader>gl", gs.blame_line, opts "Blame line")
    map("n", "<leader>gh", gs.preview_hunk_inline, opts "Preview hunk")
    -- map("n", "<leader>gd", gs.diffthis, opts "Buffer diff")
    map("n", "<leader>gr", gs.reset_hunk, opts "Reset hunk")
    map("n", "<leader>gs", gs.stage_hunk, opts "Stage hunk")
    map("n", "<leader>gu", gs.undo_stage_hunk, opts "Unstage hunk")
  end,
}

return options
