return {

   -- enable dashboard
   ["goolord/alpha-nvim"] = {
      disable = false,
      config = function()
         require "custom.plugins.alpha"
      end,
   },

   -- Add lazy load on require for telescope
   ["nvim-telescope/telescope.nvim"] = {
      module = "telescope",
   },

   ["nvim-telescope/telescope.nvim"] = {
      module = "telescope",
   },

   -- autoclose tags in html, jsx etc
   ["windwp/nvim-ts-autotag"] = {
      ft = { "html", "javascriptreact" },
      after = "nvim-treesitter",
      config = function()
         require("custom.plugins.smolconfigs").autotag()
      end,
   },

   -- format & linting
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.null-ls"
      end,
   },

   -- minimal modes
   ["Pocco81/TrueZen.nvim"] = {
      cmd = {
         "TZAtaraxis",
         "TZMinimalist",
         "TZFocus",
      },
      config = function()
         require "custom.plugins.truezen"
      end,
   },

   -- notes stuff
   ["nvim-neorg/neorg"] = {
      ft = "norg",
      after = "nvim-treesitter",
      config = function()
         require "custom.plugins.neorg"
      end,
   },

   -- get highlight group under cursor
   ["nvim-treesitter/playground"] = {
      cmd = "TSCaptureUnderCursor",
      config = function()
         require("nvim-treesitter.configs").setup()
      end,
   },

   -- dim inactive windows
   ["andreadev-it/shade.nvim"] = {
      module = "shade",
      config = function()
         require("custom.plugins.smolconfigs").shade()
      end,
   },

   ["Pocco81/AutoSave.nvim"] = {
      module = "autosave",
      config = function()
         require("custom.plugins.smolconfigs").autosave()
      end,
   },

   -- file managing , picker etc
   ["kyazdani42/nvim-tree.lua"] = {
      config = function()
         require "custom.plugins.nvimtree"
      end,
   },

   ["ahmedkhalf/project.nvim"] = {
      requires = {
         'nvim-telescope/telescope.nvim',
      },
      after = "telescope.nvim",
      config = function()
         require "custom.plugins.project"
      end,
   },
}
