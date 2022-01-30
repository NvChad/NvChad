local plugin_settings = require("core.utils").load_config().plugins
local override_req = require("core.utils").override_req

local plugins = { 
   ["NvChad/extensions"] = {
      "NvChad/extensions",
   },
   
   ["nvim-lua/plenary.nvim"] = {
      "nvim-lua/plenary.nvim",
   },
   
   ["wbthomason/packer.nvim"] = {
      "wbthomason/packer.nvim",
      event = "VimEnter",
   },
   
   ["NvChad/nvim-base16.lua"] = {
      "NvChad/nvim-base16.lua",
      after = "packer.nvim",
      config = function()
         require("colors").init()
      end,
   },
   
   ["kyazdani42/nvim-web-devicons"] = {
      "kyazdani42/nvim-web-devicons",
      after = "nvim-base16.lua",
      config = override_req("nvim_web_devicons", "plugins.configs.icons", "setup"),
   },
   
   ["feline-nvim/feline.nvim"] = {
      "feline-nvim/feline.nvim",
      disable = not plugin_settings.status.feline,
      after = "nvim-web-devicons",
      config = override_req("feline", "plugins.configs.statusline", "setup"),
   },
   
   ["akinsho/bufferline.nvim"] = {
      "akinsho/bufferline.nvim",
      disable = not plugin_settings.status.bufferline,
      after = "nvim-web-devicons",
      config = override_req("bufferline", "plugins.configs.bufferline", "setup"),
      setup = function()
         require("core.mappings").bufferline()
      end,
   },
   
   ["lukas-reineke/indent-blankline.nvim"] = {
      "lukas-reineke/indent-blankline.nvim",
      disable = not plugin_settings.status.blankline,
      event = "BufRead",
      config = override_req("indent_blankline", "plugins.configs.others", "blankline"),
   },
   
   ["norcalli/nvim-colorizer.lua"] = {
      "norcalli/nvim-colorizer.lua",
      disable = not plugin_settings.status.colorizer,
      event = "BufRead",
      config = override_req("nvim_colorizer", "plugins.configs.others", "colorizer"),
   },
   
   ["nvim-treesitter/nvim-treesitter"] = {
      "nvim-treesitter/nvim-treesitter",
      event = "BufRead",
      config = override_req("nvim_treesitter", "plugins.configs.treesitter", "setup"),
   },
   -- git stuff
   ["lewis6991/gitsigns.nvim"] = {
      "lewis6991/gitsigns.nvim",
      disable = not plugin_settings.status.gitsigns,
      opt = true,
      config = override_req("gitsigns", "plugins.configs.others", "gitsigns"),
      setup = function()
         require("core.utils").packer_lazy_load "gitsigns.nvim"
      end,
   },
   
   ["ray-x/lsp_signature.nvim"] = {
      "ray-x/lsp_signature.nvim",
      disable = not plugin_settings.status.lspsignature,
      after = "nvim-lspconfig",
      config = override_req("signature", "plugins.configs.others", "signature"),
   },
   
   ["andymass/vim-matchup"] = {
      "andymass/vim-matchup",
      disable = not plugin_settings.status.vim_matchup,
      opt = true,
      setup = function()
         require("core.utils").packer_lazy_load "vim-matchup"
      end,
   },
   
   -- lsp stuff
   ["max397574/better-escape.nvim"] = {
      "max397574/better-escape.nvim",
      disable = not plugin_settings.status.better_escape,
      event = "InsertEnter",
      config = override_req("better_escape", "plugins.configs.others", "better_escape"),
   },

   -- load luasnips + cmp related in insert mode only
   ["rafamadriz/friendly-snippets"] = {
      "rafamadriz/friendly-snippets",
      module = "cmp_nvim_lsp",
      disable = not (plugin_settings.status.cmp and plugin_settings.status.snippets),
      event = "InsertEnter",
   },
   -- cmp by default loads after friendly snippets
   -- if snippets are disabled -> cmp loads on insertEnter!
   ["hrsh7th/nvim-cmp"] = {
      "hrsh7th/nvim-cmp",
      disable = not plugin_settings.status.cmp,
      event = not plugin_settings.status.snippets and "InsertEnter",
      after = plugin_settings.status.snippets and "friendly-snippets",
      config = override_req("nvim_cmp", "plugins.configs.cmp", "setup"),
   },
   
   ["L3MON4D3/LuaSnip"] = {
      "L3MON4D3/LuaSnip",
      disable = not (plugin_settings.status.cmp and plugin_settings.status.snippets),
      wants = "friendly-snippets",
      after = "nvim-cmp",
      config = override_req("luasnip", "plugins.configs.others", "luasnip"),
   },

   ["saadparwaiz1/cmp_luasnip"] = {
      "saadparwaiz1/cmp_luasnip",
      disable = not (plugin_settings.status.cmp and plugin_settings.status.snippets),
      after = "LuaSnip",
   },

   ["hrsh7th/cmp-nvim-lua"] = {
      "hrsh7th/cmp-nvim-lua",
      disable = not plugin_settings.status.cmp,
      after = (plugin_settings.status.snippets and "cmp_luasnip") or "nvim-cmp",
   },

   ["hrsh7th/cmp-nvim-lsp"] = {
      "hrsh7th/cmp-nvim-lsp",
      disable = not plugin_settings.status.cmp,
      after = "cmp-nvim-lua",
   },

   ["hrsh7th/cmp-buffer"] = {
      "hrsh7th/cmp-buffer",
      disable = not plugin_settings.status.cmp,
      after = "cmp-nvim-lsp",
   },

   ["hrsh7th/cmp-path"] = {
      "hrsh7th/cmp-path",
      disable = not plugin_settings.status.cmp,
      after = "cmp-buffer",
   },
   -- misc plugins
   ["windwp/nvim-autopairs"] = {
      "windwp/nvim-autopairs",
      disable = not plugin_settings.status.autopairs,
      after = "nvim-cmp",
      config = override_req("nvim_autopairs", "plugins.configs.others", "autopairs"),
   },
   
   ["glepnir/dashboard-nvim"] = {
      "glepnir/dashboard-nvim",
      disable = not plugin_settings.status.dashboard,
      config = override_req("dashboard", "plugins.configs.dashboard"),
      setup = function()
         require("core.mappings").dashboard()
      end,
   },
   
   ["numToStr/Comment.nvim"] = {
      "numToStr/Comment.nvim",
      disable = not plugin_settings.status.comment,
      module = "Comment",
      config = override_req("nvim_comment", "plugins.configs.others", "comment"),
      setup = function()
         require("core.mappings").comment()
      end,
   },
   -- file managing , picker etc
   ["kyazdani42/nvim-tree.lua"] = {
      "kyazdani42/nvim-tree.lua",
      disable = not plugin_settings.status.nvimtree,
      -- only set "after" if lazy load is disabled and vice versa for "cmd"
      after = "nvim-web-devicons",
      cmd = { "NvimTreeToggle", "NvimTreeFocus" },
      config = override_req("nvim_tree", "plugins.configs.nvimtree", "setup"),
      setup = function()
         require("core.mappings").nvimtree()
      end,
   },
   
   ["nvim-telescope/telescope.nvim"] = {
      "nvim-telescope/telescope.nvim",
      module = "telescope",
      cmd = "Telescope",
      config = override_req("telescope", "plugins.configs.telescope", "setup"),
      setup = function()
         require("core.mappings").telescope()
      end,
   },
   
   ["neovim/nvim-lspconfig"] = {
      "neovim/nvim-lspconfig",
      module = "lspconfig",
      opt = true,
      setup = function()
         require("core.utils").packer_lazy_load "nvim-lspconfig"
         -- reload the current file so lsp actually starts for it
         vim.defer_fn(function()
            vim.cmd 'if &ft == "packer" | echo "" | else | silent! e %'
         end, 0)
      end,
      config = override_req("lspconfig", "plugins.configs.lspconfig"),
   },
}
--for _, plugin in ipairs(plugins)
--Override the settings given in default_plugin_override
--
return plugins
