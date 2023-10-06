-- command :Lazy
-- U for Update

local plugins = {
  -- Override plugin definition options
  -- Add additional plugins
  { -- Mason is used to help install LSP servers, formatters, linters, and debug adapters.
    "williamboman/mason.nvim",
    opts = {
      -- call :MasonInstallAll
      ensure_installed = {
        "lua-language-server", -- incl with NvChad defaults
        "rust-analyzer",
        "html-lsp",
        "prettier",
        "stylua",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- formatting & linting
      "mskelton/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  { -- rust tools
    "simrat39/rust-tools.nvim",
    ft = "rust", -- so Lazyvim knows when to load it
    after = "nvim-lspconfig",
    config = function()
      require "custom.configs.rust_tools"
    end,
  },
  { -- text syntax highlighting per language
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "json",
        "svelte",
        "toml",
        "ron", -- rust object notation

        -- low level
        "rust",
        "markdown",
      },
      highlight = {
        enable = true,
      },
    },
  },
  { -- Aggregated Trouble list
    "folke/trouble.nvim",
    cmd = "Trouble",
    config = function()
      dofile(vim.g.base46_cache .. "trouble") -- theme using chadrd.ui.extended_integrations in custom/chadrc.lua
      require("trouble").setup()
    end,
  },
}

return plugins
