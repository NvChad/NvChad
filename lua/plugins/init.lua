local present, packer = pcall(require, "plugins.packerInit")

if not present then
   return false
end

local V = require "plugins.versions"

local plugins = {
   ["nvim-lua/plenary.nvim"] = {
      commit = V.plenary_nvim,
   },
   ["lewis6991/impatient.nvim"] = {
      commit = V.impatient_nvim,
   },

   ["wbthomason/packer.nvim"] = {
      commit = V.packer_nvim,
      event = "VimEnter",
   },

   ["NvChad/extensions"] = {
      commit = V.extensions,
   },

   ["NvChad/base46"] = {
      commit = V.base46,
      after = "packer.nvim",
      config = function()
         local ok, base46 = pcall(require, "base46")

         if ok then
            base46.load_theme()
         end
      end,
   },

   ["NvChad/nvterm"] = {
      commit = V.nvterm,
      config = function()
         require "plugins.configs.nvterm"
      end,
   },

   ["kyazdani42/nvim-web-devicons"] = {
      commit = V.nvim_web_devicons,
      after = "base46",
      config = function()
         require "plugins.configs.icons"
      end,
   },

   ["feline-nvim/feline.nvim"] = {
      commit = feline_nvim,
      after = "nvim-web-devicons",
      config = function()
         require "plugins.configs.statusline"
      end,
   },

   ["akinsho/bufferline.nvim"] = {
      commit = V.bufferline_nvim,
      after = "nvim-web-devicons",
      config = function()
         require "plugins.configs.bufferline"
      end,
   },

   ["lukas-reineke/indent-blankline.nvim"] = {
      commit = V.indent_blankline_nvim,
      event = "BufRead",
      config = function()
         require("plugins.configs.others").blankline()
      end,
   },

   ["NvChad/nvim-colorizer.lua"] = {
      commit = V.nvim_colorizer_lua,
      event = "BufRead",
      config = function()
         require("plugins.configs.others").colorizer()
      end,
   },

   ["nvim-treesitter/nvim-treesitter"] = {
      commit = V.nvim_treesitter,
      event = { "BufRead", "BufNewFile" },
      run = ":TSUpdate",
      config = function()
         require "plugins.configs.treesitter"
      end,
   },

   -- git stuff
   ["lewis6991/gitsigns.nvim"] = {
      commit = V.gitsigns_nvim,
      opt = true,
      config = function()
         require("plugins.configs.others").gitsigns()
      end,
      setup = function()
         nvchad.packer_lazy_load "gitsigns.nvim"
      end,
   },

   -- lsp stuff

   ["williamboman/nvim-lsp-installer"] = {
      commit = V.nvim_lsp_installer,
      opt = true,
      setup = function()
         nvchad.packer_lazy_load "nvim-lsp-installer"
         -- reload the current file so lsp actually starts for it
         vim.defer_fn(function()
            vim.cmd 'if &ft == "packer" | echo "" | else | silent! e %'
         end, 0)
      end,
   },

   ["neovim/nvim-lspconfig"] = {
      commit = V.nvim_lspconfig,
      after = "nvim-lsp-installer",
      module = "lspconfig",
      config = function()
         require "plugins.configs.lsp_installer"
         require "plugins.configs.lspconfig"
      end,
   },

   ["ray-x/lsp_signature.nvim"] = {
      commit = V.lsp_signature_nvim,
      after = "nvim-lspconfig",
      config = function()
         require("plugins.configs.others").signature()
      end,
   },

   ["andymass/vim-matchup"] = {
      commit = V.vim_matchup,
      opt = true,
      setup = function()
         nvchad.packer_lazy_load "vim-matchup"
      end,
   },

   ["max397574/better-escape.nvim"] = {
      commit = V.better_escape_nvim,
      event = "InsertCharPre",
      config = function()
         require("plugins.configs.others").better_escape()
      end,
   },

   -- load luasnips + cmp related in insert mode only

   ["rafamadriz/friendly-snippets"] = {
      commit = V.friendly_snippets,
      module = "cmp_nvim_lsp",
      event = "InsertEnter",
   },

   ["hrsh7th/nvim-cmp"] = {
      commit = V.nvim_cmp,
      after = "friendly-snippets",
      config = function()
         require "plugins.configs.cmp"
      end,
   },

   ["L3MON4D3/LuaSnip"] = {
      commit = V.luasnip,
      wants = "friendly-snippets",
      after = "nvim-cmp",
      config = function()
         require("plugins.configs.others").luasnip()
      end,
   },

   ["saadparwaiz1/cmp_luasnip"] = {
      commit = V.cmp_luasnip,
      after = "LuaSnip",
   },

   ["hrsh7th/cmp-nvim-lua"] = {
      commit = V.cmp_nvim_lua,
      after = "cmp_luasnip",
   },

   ["hrsh7th/cmp-nvim-lsp"] = {
      commit = V.cmp_nvim_lsp,
      after = "cmp-nvim-lua",
   },

   ["hrsh7th/cmp-buffer"] = {
      commit = V.cmp_buffer,
      after = "cmp-nvim-lsp",
   },

   ["hrsh7th/cmp-path"] = {
      commit = V.cmp_path,
      after = "cmp-buffer",
   },

   -- misc plugins
   ["windwp/nvim-autopairs"] = {
      commit = V.nvim_autopairs,
      after = "nvim-cmp",
      config = function()
         require("plugins.configs.others").autopairs()
      end,
   },

   ["goolord/alpha-nvim"] = {
      -- commit = V.alpha_nvim,     -- can't config disabled plugin
      disable = true,
      config = function()
         require "plugins.configs.alpha"
      end,
   },

   ["numToStr/Comment.nvim"] = {
      commit = V.Comment_nvim,
      module = "Comment",
      keys = { "gc", "gb" },
      config = function()
         require("plugins.configs.others").comment()
      end,
   },

   -- file managing , picker etc
   ["kyazdani42/nvim-tree.lua"] = {
      commit = V.nvim_tree_lua,
      cmd = { "NvimTreeToggle", "NvimTreeFocus" },
      config = function()
         require "plugins.configs.nvimtree"
      end,
   },

   ["nvim-telescope/telescope.nvim"] = {
      commit = V.telescope_nvim,
      cmd = "Telescope",
      config = function()
         require "plugins.configs.telescope"
      end,
   },

   ["folke/which-key.nvim"] = {
      opt = true,
      setup = function()
         nvchad.packer_lazy_load "which-key.nvim"
      end,
      config = function()
         require "plugins.configs.whichkey"
      end,
   },
}

plugins = nvchad.remove_default_plugins(plugins)

-- merge user plugin table & default plugin table
plugins = nvchad.plugin_list(plugins)

return packer.startup(function(use)
   for _, v in pairs(plugins) do
      use(v)
   end
end)
