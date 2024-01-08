---@type MappingsTable
local M = {}

-- Disabled NvChad core mappings

M.disabled = {
  i = {
    ["<C-b>"] = "",
    ["<C-e>"] = "",
  },

  t = {
    ["<C-x>"] = "",
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v>"] = "",
  },

  v = {
    ["<Up>"] = "",
    ["<Down>"] = "",
  },

  n = {
    ["<C-s>"] = "",
    ["<Up>"] = "",
    ["<Down>"] = "",
    ["<leader>fh"] = "",
    ["<leader>th"] = "",
    ["<leader>ma"] = "",
    ["<leader>fo"] = "",
    ["<leadr>fz"] = "",
    ["<A-i>"] = "",
    ["<A-h>"] = "",
    ["<A-v"] = "",
    ["<leader>wK"] = "",
    ["<leader>wk"] = "",
    ["<leader>cc"] = "",
    ["]c"] = "",
    ["[c"] = "",
    ["<leader>rh"] = "",
    ["<leader>ph"] = "",
    ["<leader>gb"] = "",
    ["<leader>td"] = "",
  },
}

M.general = {
  n = {
    ["<S-u>"] = { "<C-r>", "Redo" },
    ["<C-d>"] = { "<C-d>zz", "Move half page down", opts = { noremap = true } },
    ["<C-u>"] = { "<C-u>zz", "Move half page up", opts = { noremap = true } },
    ["<C-f>"] = { "<C-f>zz", "Move one page down", opts = { noremap = true } },
    ["<C-b>"] = { "<C-b>zz", "Move one page up", opts = { noremap = true } },
    ["<leader>s"] = { "<cmd> w <CR>", "Save file" },
    ["<leader>pr"] = { "<cmd> Glow <CR>", "Preview Markdown file" },
    ["<leader>cu"] = { "<cmd> NvChadUpdate <CR>", "Update NvChad" },
  },
  t = {
    ["<ESC>"] = { "<C-\\><C-n>", "escape terminal mode", opts = { nowait = true } },
    ["jk"] = { "<C-\\><C-n>", "escape terminal mode", opts = { nowait = true } },
  },
  i = {
    ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dso"] = {
      "<cmd> DapStepOver <CR>",
      "Step Over",
    },
    ["<leader>dsi"] = {
      "<cmd> DapStepIn <CR>",
      "Step In",
    },
    ["<leader>dc"] = {
      "<cmd> DapContinue <CR>",
      "Continue",
    },
    ["<leader>dt"] = {
      "<cmd> DapTerminate <CR>",
      "Terminate",
    },
  },
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dtg"] = {
      function()
        require("dap-go").debug_test()
      end,
      "Debug Go test",
    },
    ["<leader>dtl"] = {
      function()
        require("dap-go").debug_last_test()
      end,
      "Debug last Go test",
    },
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dtp"] = {
      function()
        require("dap-python").test_method()
      end,
      "Debug Python test",
    },
  },
}

return M
