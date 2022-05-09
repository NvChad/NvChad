local plugin_settings = require("core.utils").load_config().plugins
local present, packer = pcall(require, plugin_settings.options.packer.init_file)

if not present then
   return false
end

local plugins = {
   ["nvim-lua/plenary.nvim"] = {},
   ["lewis6991/impatient.nvim"] = {},

   ["wbthomason/packer.nvim"] = {
      event = "VimEnter",
   },

   ["NvChad/extensions"] = {},

   ["NvChad/base46"] = {
      after = "packer.nvim",
      config = function()
         local ok, base46 = pcall(require, "base46")

         if ok then
            base46.load_theme()
         end
      end,
   },

   ["NvChad/nvterm"] = {
      config = function()
         require "plugins.configs.nvterm"
      end,
   },

   ["kyazdani42/nvim-web-devicons"] = {
      after = "base46",
      config = function()
         require "plugins.configs.icons"
      end,
   },

   ["feline-nvim/feline.nvim"] = {
      after = "nvim-web-devicons",
      config = function()
         require "plugins.configs.statusline"
      end,
   },

   ["akinsho/bufferline.nvim"] = {
      after = "nvim-web-devicons",

      setup = function()
         require("core.mappings").bufferline()
      end,

      config = function()
         require "plugins.configs.bufferline"
      end,
   },

   ["lukas-reineke/indent-blankline.nvim"] = {
      event = "BufRead",
      config = function()
         require("plugins.configs.others").blankline()
      end,
   },

   ["NvChad/nvim-colorizer.lua"] = {
      event = "BufRead",
      config = function()
         require("plugins.configs.others").colorizer()
      end,
   },

   ["nvim-treesitter/nvim-treesitter"] = {
      event = { "BufRead", "BufNewFile" },
      run = ":TSUpdate",
      config = function()
         require "plugins.configs.treesitter"
      end,
   },

   -- git stuff
   ["lewis6991/gitsigns.nvim"] = {
      opt = true,
      config = function()
         require("plugins.configs.others").gitsigns()
      end,
      setup = function()
         require("core.utils").packer_lazy_load "gitsigns.nvim"
      end,
   },

   -- lsp stuff

   ["williamboman/nvim-lsp-installer"] = {
      opt = true,
      setup = function()
         require("core.utils").packer_lazy_load "nvim-lsp-installer"
         -- reload the current file so lsp actually starts for it
         vim.defer_fn(function()
            vim.cmd 'if &ft == "packer" | echo "" | else | silent! e %'
         end, 0)
      end,
   },

   ["neovim/nvim-lspconfig"] = {
      after = "nvim-lsp-installer",
      module = "lspconfig",
      config = function()
         require "plugins.configs.lsp_installer"
         require "plugins.configs.lspconfig"
      end,
   },

   ["ray-x/lsp_signature.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require("plugins.configs.others").signature()
      end,
   },

   ["andymass/vim-matchup"] = {
      opt = true,
      setup = function()
         require("core.utils").packer_lazy_load "vim-matchup"
      end,
   },

   ["max397574/better-escape.nvim"] = {
      event = "InsertCharPre",
      config = function()
         require("plugins.configs.others").better_escape()
      end,
   },

   -- load luasnips + cmp related in insert mode only

   ["rafamadriz/friendly-snippets"] = {
      module = "cmp_nvim_lsp",
      event = "InsertEnter",
   },

   ["hrsh7th/nvim-cmp"] = {
      after = "friendly-snippets",
      config = function()
         require "plugins.configs.cmp"
      end,
   },

   ["L3MON4D3/LuaSnip"] = {
      wants = "friendly-snippets",
      after = "nvim-cmp",
      config = function()
         require("plugins.configs.others").luasnip()
      end,
   },

   ["saadparwaiz1/cmp_luasnip"] = {
      after = "LuaSnip",
   },

   ["hrsh7th/cmp-nvim-lua"] = {
      after = "cmp_luasnip",
   },

   ["hrsh7th/cmp-nvim-lsp"] = {
      after = "cmp-nvim-lua",
   },

   ["hrsh7th/cmp-buffer"] = {
      after = "cmp-nvim-lsp",
   },

   ["hrsh7th/cmp-path"] = {
      after = "cmp-buffer",
   },

   -- misc plugins
   ["windwp/nvim-autopairs"] = {
      after = "nvim-cmp",
      config = function()
         require("plugins.configs.others").autopairs()
      end,
   },

   ["goolord/alpha-nvim"] = {
      disable = true,
      config = function()
         require "plugins.configs.alpha"
      end,
   },

   ["numToStr/Comment.nvim"] = {
      module = "Comment",
      keys = { "gc", "gb" },

      setup = function()
         require("core.mappings").comment()
      end,

      config = function()
         require("plugins.configs.others").comment()
      end,
   },

   -- file managing , picker etc
   ["kyazdani42/nvim-tree.lua"] = {
      cmd = { "NvimTreeToggle", "NvimTreeFocus" },
      setup = function()
         require("core.mappings").nvimtree()
      end,

      config = function()
         require "plugins.configs.nvimtree"
      end,
   },

   ["nvim-telescope/telescope.nvim"] = {
      cmd = "Telescope",

      setup = function()
         require("core.mappings").telescope()
      end,

      config = function()
         require "plugins.configs.telescope"
      end,
   },
}

plugins = require("core.utils").remove_default_plugins(plugins)
-- merge user plugin table & default plugin table
plugins = require("core.utils").plugin_list(plugins)

return packer.startup(function(use)
   for _, v in pairs(plugins) do
      use(v)
   end
end)
