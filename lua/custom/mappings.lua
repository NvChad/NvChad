---@type MappingsTable
local M = {}

-- Disabled NvChad core mappings
M.disabled = {
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
    ["<leader>s"] = { "<cmd> w <CR>", "Save file" },
  },
  t = {
    ["<ESC>"] = { "<C-\\><C-n>", "escape terminal mode", opts = { nowait = true } },
  },
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
     ["<leader>dso"] = {
      "<cmd> DapStepOver <CR>",
      "Step Over"
    },
    ["<leader>dsi"] = {
      "<cmd> DapStepIn <CR>",
      "Step In"
    },
    ["<leader>dc"] = {
      "<cmd> DapContinue <CR>",
      "Continue"
    },
    ["<leader>dt"] = {
      "<cmd> DapTerminate <CR>",
      "Terminate"
    },
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug Go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last Go test"
    },
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpt"] = {
      function()
        require('dap-python').test_method()
      end,
      "Debug Python test"
    },
  }
}

return M
