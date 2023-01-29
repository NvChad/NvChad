-- All plugins have lazy=true by default,to load a plugin on startup just lazy=false
-- List of all default plugins & their definitions
local plugins = {

  ["nvim-lua/plenary.nvim"] = {},

  ["NvChad/extensions"] = { branch = "v2.0" },

  ["NvChad/base46"] = {
    branch = "v2.0",
  },

  ["NvChad/ui"] = {
    branch = "v2.0",
    lazy = false,
    config = function()
      require "nvchad_ui"
    end,
  },

  ["NvChad/nvterm"] = {
    config = function()
      require "base46.term"
      local options = require("core.utils").load_override({}, "NvChad/nvterm")
      require("nvterm").setup(options)
    end,
    init = function()
      require("core.utils").load_mappings "nvterm"
    end,
  },

  ["nvim-tree/nvim-web-devicons"] = {
    config = function()
      require("plugins.configs.others").devicons()
    end,
  },

  ["lukas-reineke/indent-blankline.nvim"] = {
    init = function()
      require("core.utils").lazy_load "indent-blankline.nvim"
      require("core.utils").load_mappings "blankline"
    end,
    config = function()
      require("plugins.configs.others").blankline()
    end,
  },

  ["NvChad/nvim-colorizer.lua"] = {
    init = function()
      require("core.utils").lazy_load "nvim-colorizer.lua"
    end,
    config = function()
      require("plugins.configs.others").colorizer()
    end,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    init = function()
      require("core.utils").lazy_load "nvim-treesitter"
    end,
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSEnable", "TSDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    config = function()
      require "plugins.configs.treesitter"
    end,
  },

  -- git stuff
  ["lewis6991/gitsigns.nvim"] = {
    ft = "gitcommit",
    init = function()
      -- load gitsigns only when a git file is opened
      vim.api.nvim_create_autocmd({ "BufRead" }, {
        group = vim.api.nvim_create_augroup("GitSignsLazyLoad", { clear = true }),
        callback = function()
          vim.fn.system("git -C " .. vim.fn.expand "%:p:h" .. " rev-parse")
          if vim.v.shell_error == 0 then
            vim.api.nvim_del_augroup_by_name "GitSignsLazyLoad"
            vim.schedule(function()
              require("lazy").load { plugins = "gitsigns.nvim" }
            end)
          end
        end,
      })
    end,
    config = function()
      require("plugins.configs.others").gitsigns()
    end,
  },

  -- lsp stuff
  ["williamboman/mason.nvim"] = {
    cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUninstall", "MasonUninstallAll", "MasonLog" },
    config = function()
      require "plugins.configs.mason"
    end,
  },

  ["neovim/nvim-lspconfig"] = {
    init = function()
      require("core.utils").lazy_load "nvim-lspconfig"
    end,
    config = function()
      require "plugins.configs.lspconfig"
    end,
  },

  -- load luasnips + cmp related in insert mode only
  ["hrsh7th/nvim-cmp"] = {
    event = "InsertEnter",
    dependencies = {
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        config = function()
          require("plugins.configs.others").luasnip()
        end,
      },

      -- autopairing of (){}[] etc
      {
        "windwp/nvim-autopairs",
        config = function()
          require("plugins.configs.others").autopairs()
        end,
      },

      -- cmp sources plugins
      {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
      },
    },

    config = function()
      require "plugins.configs.cmp"
    end,
  },

  ["numToStr/Comment.nvim"] = {
    -- keys = { "gc", "gb" },
    config = function()
      require("plugins.configs.others").comment()
    end,
    init = function()
      require("core.utils").load_mappings "comment"
    end,
  },

  -- file managing , picker etc
  ["nvim-tree/nvim-tree.lua"] = {
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    config = function()
      require "plugins.configs.nvimtree"
    end,
    init = function()
      require("core.utils").load_mappings "nvimtree"
    end,
  },

  ["nvim-telescope/telescope.nvim"] = {
    cmd = "Telescope",
    config = function()
      require "plugins.configs.telescope"
    end,
    init = function()
      require("core.utils").load_mappings "telescope"
    end,
  },

  -- Only load whichkey after all the gui
  ["folke/which-key.nvim"] = {
    enabled = false,
    keys = { "<leader>", '"', "'", "`" },
    config = function()
      require "plugins.configs.whichkey"
    end,
    init = function()
      require("core.utils").load_mappings "whichkey"
    end,
  },
}

-- pin commits for all default plugins
for _, value in pairs(plugins) do
  value.pin = true
end

plugins = require("core.utils").merge_plugins(plugins)

-- load lazy.nvim options
local lazy_config = require "plugins.configs.lazy_nvim"
lazy_config = require("core.utils").load_override(lazy_config, "folke/lazy.nvim")

require("lazy").setup(plugins, lazy_config)
