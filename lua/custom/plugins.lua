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

  -- install a plugin
  {
    "max397574/better-escape.nvim",
    event = "insertenter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- my plugins
  {
    "toppair/peek.nvim",
    build = "deno task --quiet build:fast",
    keys = {
      {
        "<leader>op",
        function()
          local peek = require "peek"
          if peek.is_open() then
            peek.close()
          else
            peek.open()
          end
        end,
        desc = "peek (markdown preview)",
      },
    },
    opts = { theme = "dark", app = "browser" },
  },
  {
    "charludo/projectmgr.nvim",
    lazy = false, -- important!
  },
  -- nvim v0.8.0
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    config = function()
      vim.cmd [[colorscheme terafox]]
      vim.g.lightline = { colorscheme = "terafox" }
    end,
    lazy = false,
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  {
    "rktjmp/fwatch.nvim",
    config = function()
      require "custom.configs.fwatch"
    end,
  },
  -- { "EdenEast/nightfox.nvim", lazy = false, priority = 1000, vim.cmd("colorscheme terafox") }, -- lazy

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
