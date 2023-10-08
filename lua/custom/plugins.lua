local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  {
    "rainbowhxch/accelerated-jk.nvim",
    event = "BufWinEnter",
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = overrides.gitsigns,
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
    ft = {"go", "python"},
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
