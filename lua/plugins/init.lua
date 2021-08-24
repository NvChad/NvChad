local present, packer = pcall(require, "plugins.packerInit")

if not present then
   return false
end

local use = packer.use

return packer.startup(function()
   local plugin_status = require("core.utils").load_config().plugin_status

   -- this is arranged on the basis of when a plugin starts

   -- this is the nvchad core repo containing utilities for some features like theme swticher, no need to lazy load
   use {
      "Nvchad/extensions",
   }

   use {
      "wbthomason/packer.nvim",
      event = "VimEnter",
   }

   use {
      "NvChad/nvim-base16.lua",
      after = "packer.nvim",
      config = function()
         require("colors").init()
      end,
   }

   use {
      "kyazdani42/nvim-web-devicons",
      after = "nvim-base16.lua",
      config = function()
         require "plugins.configs.icons"
      end,
   }

   use {
      "glepnir/galaxyline.nvim",
      disable = not plugin_status.galaxyline,
      after = "nvim-web-devicons",
      config = function()
         require "plugins.configs.statusline"
      end,
   }

   use {
      "akinsho/bufferline.nvim",
      disable = not plugin_status.bufferline,
      after = "galaxyline.nvim",
      config = function()
         require "plugins.configs.bufferline"
      end,
      setup = function()
         require("core.mappings").bufferline()
      end,
   }

   use {
      "nvim-lua/plenary.nvim",
   }

   -- git stuff
   use {
      "lewis6991/gitsigns.nvim",
      disable = not plugin_status.gitsigns,
      cond = function()
         return vim.fn.isdirectory ".git" == 1
      end,
      config = function()
         require "plugins.configs.gitsigns"
      end,
   }

   -- load autosave only if its globally enabled
   use {
      disable = not plugin_status.autosave,
      "Pocco81/AutoSave.nvim",
      config = function()
         require "plugins.configs.autosave"
      end,
      cond = function()
         return require("core.utils").load_config().options.plugin.autosave == true
      end,
   }

   use {
      "lukas-reineke/indent-blankline.nvim",
      disable = not plugin_status.blankline,
      event = "BufRead",
      config = function()
         require("plugins.configs.others").blankline()
      end,
   }

   use {
      "norcalli/nvim-colorizer.lua",
      disable = not plugin_status.colorizer,
      event = "BufRead",
      config = function()
         require("plugins.configs.others").colorizer()
      end,
   }

   -- lsp stuff
   use {
      "nvim-treesitter/nvim-treesitter",
      event = "BufRead",
      config = function()
         require "plugins.configs.treesitter"
      end,
   }

   use {
      "kabouzeid/nvim-lspinstall",
      event = "BufRead",
   }

   use {
      "neovim/nvim-lspconfig",
      after = "nvim-lspinstall",
      config = function()
         require "plugins.configs.lspconfig"
      end,
   }

   use {
      "ray-x/lsp_signature.nvim",
      disable = not plugin_status.lspsignature,
      after = "nvim-lspconfig",
      config = function()
         require("plugins.configs.others").signature()
      end,
   }

   use {
      "onsails/lspkind-nvim",
      disable = not plugin_status.lspkind,
      event = "BufEnter",
      config = function()
         require("plugins.configs.others").lspkind()
      end,
   }

   use {
      "jdhao/better-escape.vim",
      disable = not plugin_status.esc_insertmode,
      event = "InsertEnter",
      config = function()
         require("plugins.configs.others").better_escape()
      end,
      setup = function()
         require("core.mappings").better_escape()
      end,
   }

   -- load compe in insert mode only
   use {
      "hrsh7th/nvim-compe",
      event = "InsertEnter",
      config = function()
         require "plugins.configs.compe"
      end,
      wants = "LuaSnip",
      requires = {
         {
            "L3MON4D3/LuaSnip",
            wants = "friendly-snippets",
            event = "InsertCharPre",
            config = function()
               require "plugins.configs.luasnip"
            end,
         },
         {
            "rafamadriz/friendly-snippets",
            event = "InsertCharPre",
         },
      },
   }

   -- misc plugins
   use {
      "windwp/nvim-autopairs",
      after = "nvim-compe",
      config = function()
         require "plugins.configs.autopairs"
      end,
   }

   use {
      "andymass/vim-matchup",
      disable = not plugin_status.vim_matchup,
      event = "CursorMoved",
   }

   -- smooth scroll
   use {
      "karb94/neoscroll.nvim",
      disable = not plugin_status.neoscroll,
      event = "WinScrolled",
      config = function()
         require("plugins.configs.others").neoscroll()
      end,
   }

   use {
      "glepnir/dashboard-nvim",
      disable = not plugin_status.dashboard,
      cmd = {
         "Dashboard",
         "DashboardNewFile",
         "DashboardJumpMarks",
         "SessionLoad",
         "SessionSave",
      },
      config = function()
         require "plugins.configs.dashboard"
      end,
      setup = function()
         require("core.mappings").dashboard()
      end,
   }

   use {
      "sbdchd/neoformat",
      disable = not plugin_status.neoformat,
      cmd = "Neoformat",
      setup = function()
         require("core.mappings").neoformat()
      end,
   }

   --   use "alvan/vim-closetag" -- for html autoclosing tag
   use {
      "terrortylor/nvim-comment",
      disable = not plugin_status.comment,
      cmd = "CommentToggle",
      config = function()
         require("plugins.configs.others").comment()
      end,
      setup = function()
         require("core.mappings").comment()
      end,
   }

   -- file managing , picker etc
   use {
      "kyazdani42/nvim-tree.lua",
      cmd = { "NvimTreeToggle", "NvimTreeFocus" },
      config = function()
         require "plugins.configs.nvimtree"
      end,
      setup = function()
         require("core.mappings").nvimtree()
      end,
   }

   use {
      "nvim-telescope/telescope.nvim",
      cmd = "Telescope",
      -- because cheatsheet is not activated by a teleacope command
      module = "cheatsheet",
      requires = {
         {
            "sudormrfbin/cheatsheet.nvim",
            disable = not plugin_status.cheatsheet,
            after = "telescope.nvim",
            config = function()
               require "plugins.configs.chadsheet"
            end,
            setup = function()
               require("core.mappings").chadsheet()
            end,
         },
         {
            "nvim-telescope/telescope-fzf-native.nvim",
            run = "make",
         },
         {
            "nvim-telescope/telescope-media-files.nvim",
            disable = not plugin_status.telescope_media,
            setup = function()
               require("core.mappings").telescope_media()
            end,
         },
      },
      config = function()
         require "plugins.configs.telescope"
      end,
      setup = function()
         require("core.mappings").telescope()
      end,
   }

   use {
      "Pocco81/TrueZen.nvim",
      disable = not plugin_status.truezen,
      cmd = {
         "TZAtaraxis",
         "TZMinimalist",
         "TZFocus",
      },
      config = function()
         require "plugins.configs.zenmode"
      end,
      setup = function()
         require("core.mappings").truezen()
      end,
   }

   use {
      "tpope/vim-fugitive",
      disable = not plugin_status.vim_fugitive,
      cmd = {
         "Git",
         "Gdiff",
         "Gdiffsplit",
         "Gvdiffsplit",
         "Gwrite",
         "Gw",
      },
      setup = function()
         require("core.mappings").vim_fugitive()
      end,
   }
end)
