local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  {
    "lewis6991/gitsigns.nvim",
    opts = overrides.gitsigns,
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings "dap"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings "dap_go"
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, _)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings "dap_python"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "c", "cpp", "go", "lua", "markdown", "python", "yaml" },
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "NvChad/nvterm",
    opts = overrides.nvterm,
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = overrides.nvimtree,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
}

return plugins
