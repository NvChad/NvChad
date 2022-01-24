local plugin_settings = require("core.utils").load_config().plugins
local present, packer = pcall(require, plugin_settings.options.packer.init_file)

if not present then
   return false
end

local use = packer.use

return packer.startup(function()
   local override_req = require("core.utils").override_req

   -- this is arranged on the basis of when a plugin starts

   -- this is the nvchad core repo containing utilities for some features like theme swticher, no need to lazy load
   use "Nvchad/extensions"
   use "nvim-lua/plenary.nvim"

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
      config = override_req("nvim_web_devicons", "plugins.configs.icons", "setup"),
   }

   use {
      "feline-nvim/feline.nvim",
      disable = not plugin_settings.status.feline,
      after = "nvim-web-devicons",
      config = override_req("feline", "plugins.configs.statusline", "setup"),
   }

   use {
      "akinsho/bufferline.nvim",
      disable = not plugin_settings.status.bufferline,
      after = "nvim-web-devicons",
      config = override_req("bufferline", "plugins.configs.bufferline", "setup"),
      setup = function()
         require("core.mappings").bufferline()
      end,
   }

   use {
      "lukas-reineke/indent-blankline.nvim",
      disable = not plugin_settings.status.blankline,
      event = "BufRead",
      config = override_req("indent_blankline", "plugins.configs.others", "blankline"),
   }

   use {
      "norcalli/nvim-colorizer.lua",
      disable = not plugin_settings.status.colorizer,
      event = "BufRead",
      config = override_req("nvim_colorizer", "plugins.configs.others", "colorizer"),
   }

   use {
      "nvim-treesitter/nvim-treesitter",
      event = "BufRead",
      config = override_req("nvim_treesitter", "plugins.configs.treesitter", "setup"),
   }

   -- git stuff
   use {
      "lewis6991/gitsigns.nvim",
      disable = not plugin_settings.status.gitsigns,
      opt = true,
      config = override_req("gitsigns", "plugins.configs.others", "gitsigns"),
      setup = function()
         require("core.utils").packer_lazy_load "gitsigns.nvim"
      end,
   }

   use {
      "andymass/vim-matchup",
      disable = not plugin_settings.status.vim_matchup,
      opt = true,
      setup = function()
         require("core.utils").packer_lazy_load "vim-matchup"
      end,
   }

   use {
      "max397574/better-escape.nvim",
      disable = not plugin_settings.status.better_escape,
      event = "InsertEnter",
      config = override_req("better_escape", "plugins.configs.others", "better_escape"),
   }

   use {
      "glepnir/dashboard-nvim",
      disable = not plugin_settings.status.dashboard,
      config = override_req("dashboard", "plugins.configs.dashboard"),
      setup = function()
         require("core.mappings").dashboard()
      end,
   }

   use {
      "numToStr/Comment.nvim",
      disable = not plugin_settings.status.comment,
      module = "Comment",
      config = override_req("nvim_comment", "plugins.configs.others", "comment"),
      setup = function()
         require("core.mappings").comment()
      end,
   }

   -- file managing , picker etc
   use {
      "kyazdani42/nvim-tree.lua",
      disable = not plugin_settings.status.nvimtree,

      -- only set "after" if lazy load is disabled and vice versa for "cmd"
      after = not plugin_settings.options.nvimtree.lazy_load and "nvim-web-devicons",

      cmd = plugin_settings.options.nvimtree.lazy_load and { "NvimTreeToggle", "NvimTreeFocus" },
      config = override_req("nvim_tree", "plugins.configs.nvimtree", "setup"),
      setup = function()
         require("core.mappings").nvimtree()
      end,
   }

   use {
      "nvim-telescope/telescope.nvim",
      module = "telescope",
      cmd = "Telescope",
      config = override_req("telescope", "plugins.configs.telescope", "setup"),
      setup = function()
         require("core.mappings").telescope()
      end,
   }
   -- load user defined plugins
   require("core.customPlugins").run(use)
end)
