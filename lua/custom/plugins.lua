
local plugins={
  {
    "williamboman/mason.nvim",
    ops={
      ensure_installed={
        "rust-analyzer",
        "clangd"
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config=function ()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end
  },
  {
    "rust-lang/rust.vim",
    ft="rust",
    init=function ()
      return
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft="rust",
    dependencies="neovim/nvim-lspconfig",
    opts=function ()
      return require "custom.configs.rust-tools"
    end,
    -- config=function (_,opts)
    --   require("custom.configs.rust-tools").setup(opts)
    -- end
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "saecki/crates.nvim",
    ft={"rust","toml"},
    config=function (_,opts)
      local crates=require("crates");
      crates.setup(opts);
      crates.show();
    end
  },
  {
    "hrsh7th/nvim-cmp",
    opts=function ()
      local M=require("plugins.configs.cmp");
      table.insert(M.sources,{ name="crates" });
      return M;
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
  },
  {
    "romgrk/barbar.nvim",
    dependencies={
      "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
      "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    init=function()
      vim.g.barbar_auto_setup=false
    end,
    opts={
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation=true,
      -- insert_at_start=true,
      -- …etc.
    },
    version="^1.0.0", -- optional: only update when a new 1.x version is released
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies={ "nvim-tree/nvim-web-devicons" }
  },
  {
    "deoplete-plugins/deoplete-clang"
  }
};





return plugins;
