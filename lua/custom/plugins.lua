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
      "jose-elias-alvarez/null-ls.nvim",
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
    after = "nvim-lspconfig",
    config = function()
      require("rust-tools").setup {}
    end,
  },
}

return plugins
