local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },

  {
    "mattn/emmet-vim",
    opts = {},
    lazy = false,
    config = function() end,
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "Z3rio/NvChad-customdata",
    
    build = function()
      os.execute("cd " .. vim.fn.stdpath("data") .. "/lazy/NvChad-customdata/fivem && npm install && npm run build")
    end,
    update = function()
      os.execute("cd " .. vim.fn.stdpath("data") .. "/lazy/NvChad-customdata/fivem && npm install && npm run build")
    end,
    lazy = false
  },

  {
    "Z3rio/spotify.nvim",

    config = function()
      require("spotify").setup({
        debug = true,
        clientId = ""
      })
    end,

    lazy = false,
    dev = true,
    enabled = false
  },

  {
    "andweeb/presence.nvim",

    lazy = false,

    config = function()
      require "custom.configs.presence"
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
