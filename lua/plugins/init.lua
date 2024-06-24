return {
  { import = "plugins.specs.rust" },
  { import = "plugins.specs.dap" },
  { import = "plugins.specs.test" },
  { import = "plugins.specs.todo-comments" },
  { import = "plugins.specs.flash" },
  { import = "plugins.specs.git" },
  { import = "plugins.specs.schemastore" },
  { import = "plugins.specs.nvim-lint" },
  { import = "plugins.specs.trouble" },
  { import = "plugins.specs.smart-split" },
  { import = "plugins.specs.typescript-tools" },
  { import = "plugins.specs.hurl" },
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "yaml-language-server",
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettierd",
        "eslint-lsp",
        "json-lsp",
        "js-debug-adapter",
        "chrome-debug-adapter",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "hadolint",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      -- "nvim-telescope/telescope-file-browser.nvim",
    },
    opts = function()
      local config = require "nvchad.configs.telescope"
      local actions = require "telescope.actions"

      config.defaults.mappings = vim.tbl_deep_extend("force", config.defaults.mappings, {
        n = {
          ["<c-d>"] = require("telescope.actions").delete_buffer,
        },
        i = {
          ["<c-j>"] = actions.move_selection_next,
          ["<c-k>"] = actions.move_selection_previous,
          ["<c-h>"] = "which_key",
          ["<c-d>"] = require("telescope.actions").delete_buffer,
        },
      })

      config.extensions_list = vim.list_extend(config.extensions_list, { "fzf" })
      config.extensions["fzf"] = {
        fuzzy = true, -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = "smart_case", -- or "ignore_case" or "respect_case"
        -- the default case_mode is "smart_case"
      }

      return config
    end,
  },
  {
    "stevearc/oil.nvim",
    cmd = { "Oil" },
    lazy = true,
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup {
        default_file_explorer = true,
        delete_to_trash = true,
        skip_confirm_for_simple_edits = true,
        view_options = {
          show_hidden = true,
          natural_order = true,
          is_always_hidden = function(name, _)
            return name == ".." or name == ".git"
          end,
        },
        float = {
          padding = 2,
          max_width = 90,
          max_height = 0,
        },
        win_options = {
          wrap = true,
          winblend = 0,
        },
        keymaps = {
          ["<C-c>"] = false,
          ["q"] = "actions.close",
        },
      }
    end,
  },
}
