local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function ()
        require('dap-python').test_method()
      end,
    }
  }
}

M.conda_envs = {
  plugin = true,
  n = {
    ["<leader>m"] = {
      function ()
        require'telescope'.extensions.conda.conda{}
      end
    }
  }
}

return M
