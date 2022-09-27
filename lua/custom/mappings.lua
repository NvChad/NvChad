local M = {}


M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
  },

  i = {
    ["jk"] = { "<ESC>", "escape vim" },
  },
}
M.gitsigns = {
  n = {

    ["<leader>gd"] = {
      function ()
        require("gitsigns").diffthis()
      end,
      "Git diff",
    },
    ["<leader>gj"] = {
      function ()
        require("gitsigns").next_hunk()
      end,
      "Git next hunk",
    },
    ["<leader>gk"] = {
      function ()
        require("gitsigns").prev_hunk()
      end,
      "Git previous hunk",
    },
    ["<leader>gp"] = {
      function ()
        require("gitsigns").preview_hunk()
      end,
      "Git preview hunk ",
    },
    ["<leader>gh"] = {
      function ()
        require("gitsigns").reset_hunk()
      end,
      "Git reset hunk",
    },
    ["<leader>gr"] = {
      function ()
        require("gitsigns").reset_buffer()
      end,
      "Git rest buffer",
    },
    ["<leader>gs"] = {
      function ()
        require("gitsigns").stage_hunk()
      end,
      "Git stage hunk"
    },
  }
}

return M
