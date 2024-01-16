local M = {}

M.abc = {
  n = {
    ["<leader>n"] = {":set relativenumber! <CR>", "Toggle Relativenumber"},


    -- Window rezising
    ["<A-h>"] = {":vertical resize -5<CR>"},
    ["<A-j>"] = {":horizontal resize -5<CR>"},
    ["<A-k>"] = {":horizontal resize +5<CR>"},
    ["<A-l>"] = {":vertical resize +5<CR>"},
  },

  i = {
    ["<C-a>"] = { -- Does not work
      function()
        return vim.fn['codeium#Accept']()
      end,
      "Codeium Accept",
      expr = true
    },
    ["<C-s>"] = {
      function()
        return vim.fn['codeium#CycleCompletions'](1)
      end,
      "Codeium Accept",
      expr = true
    },
    ["<C-d>"] = { -- Does not work
      function()
          return vim.fn['codeium#CycleCompletions'](-1)
      end,
      "Codeium Accept",
      expr = true
    },
    ["<C-q>"] = {
      function()
        return vim.fn['codeium#Clear']()
      end,
      "Codeium Accept",
      expr = true
    },
  }
}

M.nvterm = {
  plugin = true,

  t = {
    ["<A-g>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },
  },

  n = {
    ["<A-g>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
      "Toggle horizontal term",
    },
  }
}

-- M.codeium = {
--   i = {
--     ["<C-a>"] = {
--       function()
--         return vim.fn['codeium#Accept']()
--       end,
--       "Codeium Accept",
--       expr = true
--     },
--     ["<C-s>"] = {
--       function()
--         return vim.fn['codeium#CycleCompletions'](1)
--       end,
--       "Codeium Accept",
--       expr = true
--     },
--     ["<C-d>"] = {
--       function()
--           return vim.fn['codeium#CycleCompletions'](-1)
--       end,
--       "Codeium Accept",
--       expr = true
--     },
--     ["<C-q>"] = {
--       function()
--         return vim.fn['codeium#Clear']()
--       end,
--       "Codeium Accept",
--       expr = true
--     },
--   }
-- }

M.disabled = {
  n = {
    -- ["<leader>n"] =""
  }
}

return M
