local plugins = {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "gopls",
                "rust-analyzer"
            }
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        ft = "go",
        opts = function()
            return require "custom.configs.null-ls"
        end,
    },
    {
        "olexsmir/gopher.nvim",
        ft = "go",
        config = function(_, opts)
            require("gopher").setup(opts)
        end,
        build = function()
            vim.cmd [[silent! GoInstallDeps]]
        end
    },
    {
      "rust-lang/rust.vim",
      ft="rust",
      init = function ()
        vim.g.rustfmt_autosave = 1
      end
    }
}

return plugins
