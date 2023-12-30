local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
  -- nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- nvim-treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  -- mason.nvim
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
}

return plugins
