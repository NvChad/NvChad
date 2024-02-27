
local M={};

M.dap={
  n={
    ["<leader>db"]={
      "<cmd> DapTogglBreakpoint <CR>",
      "Toggle breakpoint"
    },
    ["<leader>dus"]={
      function ()
        local widgets=require("dap.ui.widgets");
        local sidebar=widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
};

M.crates={
  n={
    ["<leader>rcu"]={
      function ()
        require("crates").upgrade_all_crates()
      end,
      "Update crates"
    },
  }
};


return M;