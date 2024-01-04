local M = {}

M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle Breakpoint",
    },
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require("crates").upgrade_all_crates()
      end,
      "Update Rust crates",
    }
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function ()
        require("dap-python").test_method()
      end,
      "Test python debugger",
    }
  }
}

M.resize_window_horizontal = {
  n = {
    ["<leader>h"] = {
      function()
        require("nvterm.terminal").new "horizontal"
        vim.cmd(":resize -5<CR>")
      end,
      "Open horizontal terminal to 1/3",
    }
  }
}
return M
