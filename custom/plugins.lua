local plugins = {

  {"xiyaowong/transparent.nvim", lazy = false},  -- load a plugin at startup
  -- You can use any plugin specification from lazy.nvim
  {"Pocco81/TrueZen.nvim",
    cmd = { "TZAtaraxis", "TZMinimalist" },
    config = function()
      require "custom.configs.truezen" -- just an example path
    end,
  },
  -- this opts will extend the default opts 
  {"nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {"vim", "html", "css", "bash", "javascript", "svelte", "json", "typescript", "go"},
      highlight = {enable = true},
    },
  },
  -- if you load some function or module within your opt, wrap it with a function
  {"nvim-telescope/telescope.nvim",
   opts = {
     defaults = {
       mappings = {
         i = {
           ["<esc>"] = function(...)
               require("telescope.actions").close(...)
            end,
          },
        },
      },
    },
  },
  {"folke/which-key.nvim",},
  {"neovim/nvim-lspconfig",
   config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
   end,
  },
  {"williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "typescript-language-server",
        "svelte-language-server",
        "angular-language-server",
        "css-lsp",
        "json-lsp",
        "tailwindcss-language-server",
        "python-lsp-server",
        "gopls"
      },
    },
  },
  {"nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
      },
      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
      },
    },
  },
};

return plugins

