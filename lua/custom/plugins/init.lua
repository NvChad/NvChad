return {
  -- TODO:
  -- what is the point of calling require "plugins.configs.lspconfig"? in this file it returns M (also some calls)
  -- and then we not catch the returned value of that! we catch (some kind) the return value in "custom.plugins.configs.lspconfig"
  -- another question is why we override the "config" key completely? Do not we need to override it with "override_options"?
  -- what is the different between assign the function to the "config" and assign a function/table to "override_options"?
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
    end
  },
  ["justinmk/vim-sneak"] = {},
  ["tpope/vim-fugitive"] = {},
  ["goolord/alpha-nvim"] = {disable = false},
  ["vimwiki/vimwiki"] = {branch = "dev"},
  -- null-ls is not part of the nvChad but it is recommended in docs
  -- see: https://nvchad.github.io/config/Format%20&%20lint
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function() require("custom.plugins.configs.null-ls").setup() end
  },
  ["jpalardy/vim-slime"] = {},
  ["editorconfig/editorconfig-vim"] = {},
  ["alvan/vim-closetag"] = {},
  ["jupyter-vim/jupyter-vim"] = {},

  -- list of supported competitive porgramming web sites
  -- https://github.com/jmerle/competitive-companion
  ["MunifTanjim/nui.nvim"] = {},
  ["xeluxee/competitest.nvim"] = {
    requires = 'MunifTanjim/nui.nvim',
    config = function() require'custom.plugins.configs.competitest'.setup() end
  },

  -- remove plugins
  ["NvChad/nvterm"] = false, -- TODO: checkout this

  -- override plugins
  ["nvim-tree/nvim-tree.lua"] = {override_options = require("custom.plugins.options.nvimtree")},
  ["lewis6991/gitsigns.nvim"] = {override_options = require("custom.plugins.options.gitsigns")},
  ["nvim-treesitter/nvim-treesitter"] = {override_options = require("custom.plugins.options.treesitter")},
  ["nvim-telescope/telescope.nvim"] = {
    override_options = function()
      local actions = require('telescope.actions')
      return {
        defaults = { -- TODO: why this needs default but the example in nvchad docs for "cmp" does not?
          mappings = {i = {["<Esc>"] = actions.close}}
        }
      }
    end
  },
  ["folke/which-key.nvim"] = {override_options = require("custom.plugins.options.whichkey")}, -- TODO: how enable which-key? it is disabled by default.
  ["NvChad/ui"] = {override_options = require("custom.plugins.options.ui")},
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {"lua-language-server", "css-lsp", "html-lsp", "typescript-language-server", "pyright"}
    }
  }
}
