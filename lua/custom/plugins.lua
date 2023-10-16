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
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings("dap_go")
    end
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
    "karb94/neoscroll.nvim",
    event = "BufReadPost",
    config = function()
      require "custom.configs.neoscroll"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"go", "python", "yaml"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
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
