local plugins = {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            highlight = {
                -- enable = true,
                disable = { "fsharp", "cs" },
            },
            ensure_installed = {
                "c_sharp",
                "java"
            },
        },
    },
    { -- Disabled for now until while other is being tested
        "ionide/Ionide-vim",
        enabled = false,
        -- lazy = true,
        ft = "fsharp",
        init = function()
            require("core.utils").load_mappings "lspconfig"
        end,
        config = function()
            -- require "custom.configs.lspconfig"
        end,
    },
    {
        "Exafunction/codeium.vim",
        event = "BufEnter",
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "stylua",
                "omnisharp",
                "csharpier",
                "html-lsp",
                "jdtls"
            },
        },
    },
    {
        "stevearc/conform.nvim",
        enabled = false,
        opts = {},
        config = function()
            require "custom.configs.conform"
        end,
    },
    { -- works, but need to figure out how to load properly
        -- see https://github.com/adelarsq/neofsharp.vim?tab=readme-ov-file
        -- use cond property
        "adelarsq/neofsharp.vim",
        -- lazy = false,
        ft = "fsharp",
    },
    {
      "preservim/vim-markdown",
      ft = "markdown",
      dependencies = {
        "godlygeek/tabular"
      }
    }
}
return plugins
