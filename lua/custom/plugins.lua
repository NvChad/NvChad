
local plugins={
  {
    'williamboman/mason.nvim',
    ops={
      ensure_installed={
        'rust-analyzer'
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config=function ()
      require("plugins.configs.lspconfig")
      require("plugins.configs.lspconfig")
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
    'nvim-treesitter/nvim-treesitter',
  }
};





return plugins;