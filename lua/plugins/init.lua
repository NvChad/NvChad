local plugin_settings = require("core.utils").load_config().plugins
local present, packer = pcall(require, plugin_settings.options.packer.init_file)

if not present then
   return false
end

local override_req = require("core.utils").override_req

local plugins = {
   { "nvim-lua/plenary.nvim" },
   { "lewis6991/impatient.nvim" },
   { "nathom/filetype.nvim" },

   {
      "wbthomason/packer.nvim",
      event = "VimEnter",
   },

   {
      "NvChad/extensions",
      config = function ()
         vim.schedule_wrap(require("nvchad.terminal").init())
      end
   },

   {
      "NvChad/nvim-base16.lua",
      after = "packer.nvim",
      config = function()
         require("colors").init()
      end,
   },

   {
      "kyazdani42/nvim-web-devicons",
      after = "nvim-base16.lua",
      config = override_req("nvim_web_devicons", "plugins.configs.icons", "setup"),
   },

   {
      "feline-nvim/feline.nvim",
      disable = not plugin_settings.status.feline,
      after = "nvim-web-devicons",
      config = override_req("feline", "plugins.configs.statusline", "setup"),
   },

   {
      "akinsho/bufferline.nvim",
      branch = "main",
      disable = not plugin_settings.status.bufferline,
      after = "nvim-web-devicons",
      config = override_req("bufferline", "plugins.configs.bufferline", "setup"),
      setup = function()
         require("core.mappings").bufferline()
      end,
   },

   {
      "lukas-reineke/indent-blankline.nvim",
      disable = not plugin_settings.status.blankline,
      event = "BufRead",
      config = override_req("indent_blankline", "plugins.configs.others", "blankline"),
   },

   {
      "NvChad/nvim-colorizer.lua",
      disable = not plugin_settings.status.colorizer,
      event = "BufRead",
      config = override_req("nvim_colorizer", "plugins.configs.others", "colorizer"),
   },

   {
      "nvim-treesitter/nvim-treesitter",
      event = { "BufRead", "BufNewFile" },
      config = override_req("nvim_treesitter", "plugins.configs.treesitter", "setup"),
      run = ":TSUpdate",
   },

   -- git stuff
   {
      "lewis6991/gitsigns.nvim",
      disable = not plugin_settings.status.gitsigns,
      opt = true,
      config = override_req("gitsigns", "plugins.configs.others", "gitsigns"),
      setup = function()
         require("core.utils").packer_lazy_load "gitsigns.nvim"
      end,
   },

   -- lsp stuff

   {
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

   {
      "ray-x/lsp_signature.nvim",
      disable = not plugin_settings.status.lspsignature,
      after = "nvim-lspconfig",
      config = override_req("signature", "plugins.configs.others", "signature"),
   },

   {
      "andymass/vim-matchup",
      disable = not plugin_settings.status.vim_matchup,
      opt = true,
      setup = function()
         require("core.utils").packer_lazy_load "vim-matchup"
      end,
   },

   {
      "max397574/better-escape.nvim",
      disable = not plugin_settings.status.better_escape,
      event = "InsertCharPre",
      config = override_req("better_escape", "plugins.configs.others", "better_escape"),
   },

   -- load luasnips + cmp related in insert mode only

   {
      "rafamadriz/friendly-snippets",
      module = "cmp_nvim_lsp",
      disable = not plugin_settings.status.cmp,
      event = "InsertEnter",
   },

   {
      "hrsh7th/nvim-cmp",
      disable = not plugin_settings.status.cmp,
      after = "friendly-snippets",
      config = override_req("nvim_cmp", "plugins.configs.cmp", "setup"),
   },

   {
      "L3MON4D3/LuaSnip",
      disable = not plugin_settings.status.cmp,
      wants = "friendly-snippets",
      after = "nvim-cmp",
      config = override_req("luasnip", "plugins.configs.others", "luasnip"),
   },

   {
      "saadparwaiz1/cmp_luasnip",
      disable = not plugin_settings.status.cmp,
      after = plugin_settings.options.cmp.lazy_load and "LuaSnip",
   },

   {
      "hrsh7th/cmp-nvim-lua",
      disable = not plugin_settings.status.cmp,
      after = "cmp_luasnip",
   },

   {
      "hrsh7th/cmp-nvim-lsp",
      disable = not plugin_settings.status.cmp,
      after = "cmp-nvim-lua",
   },

   {
      "hrsh7th/cmp-buffer",
      disable = not plugin_settings.status.cmp,
      after = "cmp-nvim-lsp",
   },

   {
      "hrsh7th/cmp-path",
      disable = not plugin_settings.status.cmp,
      after = "cmp-buffer",
   },

   -- misc plugins
   {
      "windwp/nvim-autopairs",
      disable = not plugin_settings.status.autopairs,
      after = plugin_settings.options.autopairs.loadAfter,
      config = override_req("nvim_autopairs", "plugins.configs.others", "autopairs"),
   },

   {
      disable = not plugin_settings.status.alpha,
      "goolord/alpha-nvim",
      config = override_req("alpha", "plugins.configs.alpha", "setup"),
   },

   {
      "numToStr/Comment.nvim",
      disable = not plugin_settings.status.comment,
      module = "Comment",
      keys = { "gcc" },
      config = override_req("nvim_comment", "plugins.configs.others", "comment"),
      setup = function()
         require("core.mappings").comment()
      end,
   },

   -- file managing , picker etc
   {
      "kyazdani42/nvim-tree.lua",
      disable = not plugin_settings.status.nvimtree,
      -- only set "after" if lazy load is disabled and vice versa for "cmd"
      after = not plugin_settings.options.nvimtree.lazy_load and "nvim-web-devicons",
      cmd = plugin_settings.options.nvimtree.lazy_load and { "NvimTreeToggle", "NvimTreeFocus" },
      config = override_req("nvim_tree", "plugins.configs.nvimtree", "setup"),
      setup = function()
         require("core.mappings").nvimtree()
      end,
   },

   {
      "nvim-telescope/telescope.nvim",
      module = "telescope",
      cmd = "Telescope",
      config = override_req("telescope", "plugins.configs.telescope", "setup"),
      setup = function()
         require("core.mappings").telescope()
      end,
   },
}

--label plugins for operational assistance
plugins = require("core.utils").label_plugins(plugins)
--remove plugins specified in chadrc
plugins = require("core.utils").remove_default_plugins(plugins)
--add plugins specified in chadrc
plugins = require("core.utils").add_user_plugins(plugins)

return packer.startup(function(use)
   for _, v in pairs(plugins) do
      use(v)
   end
end)
