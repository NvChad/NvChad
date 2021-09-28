local present, packer = pcall(require, "plugins.packerInit")

if not present then
   return false
end

local use = packer.use

return packer.startup(function()
   local plugin_status = require("core.utils").load_config().plugins.plugin_status

   -- FUNCTION: override_req, use `chadrc` plugin config override if present
   -- name = name inside `default_config` / `chadrc`
   -- default_req = run this if 'name' does not exist in `default_config` / `chadrc`
   -- if override or default_req start with `(`, then strip that and assume override calls a function, not a whole file
   local override_req = function(name, default_req)
      local override = require("core.utils").load_config().plugins.default_plugin_config_replace[name]
      local result

      if override == nil then
         result = default_req
      else
         result = override
      end

      if string.match(result, "^%(") then
         result = result:sub(2)
         result = result:gsub("%)%.", "').", 1)
         return "require('" .. result
      else
         return "require('" .. result .. "')"
      end
   end

   -- this is arranged on the basis of when a plugin starts

   -- this is the nvchad core repo containing utilities for some features like theme swticher, no need to lazy load
   use {
      "Nvchad/extensions",
   }

   use {
      "nvim-lua/plenary.nvim",
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
      config = override_req("nvim_web_devicons", "plugins.configs.icons"),
   }

   use {
      "famiu/feline.nvim",
      disable = not plugin_status.feline,
      after = "nvim-web-devicons",
      config = override_req("feline", "plugins.configs.statusline"),
   }

   use {
      "akinsho/bufferline.nvim",
      disable = not plugin_status.bufferline,
      after = "nvim-web-devicons",
      config = override_req("bufferline", "plugins.configs.bufferline"),
      setup = function()
         require("core.mappings").bufferline()
      end,
   }

   use {
      "lukas-reineke/indent-blankline.nvim",
      disable = not plugin_status.blankline,
      event = "BufRead",
      config = override_req("indent_blankline", "(plugins.configs.others).blankline()"),
   }

   use {
      "norcalli/nvim-colorizer.lua",
      disable = not plugin_status.colorizer,
      event = "BufRead",
      config = override_req("nvim_colorizer", "(plugins.configs.others).colorizer()"),
   }

   use {
      "nvim-treesitter/nvim-treesitter",
      branch = "0.5-compat",
      event = "BufRead",
      config = override_req("nvim_treesitter", "plugins.configs.treesitter"),
   }

   -- git stuff
   use {
      "lewis6991/gitsigns.nvim",
      disable = not plugin_status.gitsigns,
      opt = true,
      config = override_req("gitsigns", "plugins.configs.gitsigns"),
      setup = function()
         require("core.utils").packer_lazy_load "gitsigns.nvim"
      end,
   }

   -- smooth scroll
   use {
      "karb94/neoscroll.nvim",
      disable = not plugin_status.neoscroll,
      opt = true,
      config = override_req("neoscroll", "(plugins.configs.others).neoscroll()"),
      setup = function()
         require("core.utils").packer_lazy_load "neoscroll.nvim"
      end,
   }

   -- lsp stuff

   use {
      "neovim/nvim-lspconfig",
      opt = true,
      setup = function()
         require("core.utils").packer_lazy_load "nvim-lspconfig"
         -- reload the current file so lsp actually starts for it
         vim.defer_fn(function()
            vim.cmd "silent! e %"
         end, 0)
      end,
      config = override_req("lspconfig", "plugins.configs.lspconfig"),
   }

   use {
      "ray-x/lsp_signature.nvim",
      disable = not plugin_status.lspsignature,
      after = "nvim-lspconfig",
      config = override_req("signature", "(plugins.configs.others).signature()"),
   }

   use {
      "andymass/vim-matchup",
      disable = not plugin_status.vim_matchup,
      opt = true,
      setup = function()
         require("core.utils").packer_lazy_load "vim-matchup"
      end,
   }

   -- load autosave only if its globally enabled
   use {
      disable = not plugin_status.autosave,
      "Pocco81/AutoSave.nvim",
      config = override_req("autosave", "(plugins.configs.others).autosave()"),
      cond = function()
         return require("core.utils").load_config().plugins.options.autosave == true
      end,
   }

   use {
      "max397574/better-escape.nvim",
      disable = not plugin_status.esc_insertmode,
      event = "InsertEnter",
      config = override_req("better_escape", "(plugins.configs.others).better_escape()"),
   }

   -- load luasnips + cmp related in insert mode only

   use {
      "rafamadriz/friendly-snippets",
      disable = not plugin_status.cmp,
      event = "InsertEnter",
   }

   use {
      "hrsh7th/nvim-cmp",
      disable = not plugin_status.cmp,
      after = "friendly-snippets",
      config = override_req("nvim_cmp", "plugins.configs.cmp"),
   }

   use {
      "L3MON4D3/LuaSnip",
      disable = not plugin_status.cmp,
      wants = "friendly-snippets",
      after = "nvim-cmp",
      config = override_req("luasnip", "(plugins.configs.others).luasnip()"),
   }

   use {
      "saadparwaiz1/cmp_luasnip",
      disable = not plugin_status.cmp,
      after = "LuaSnip",
   }

   use {
      "hrsh7th/cmp-nvim-lua",
      disable = not plugin_status.cmp,
      after = "cmp_luasnip",
   }

   use {
      "hrsh7th/cmp-nvim-lsp",
      disable = not plugin_status.cmp,
      after = "cmp-nvim-lua",
   }

   use {
      "hrsh7th/cmp-buffer",
      disable = not plugin_status.cmp,
      after = "cmp-nvim-lsp",
   }

   -- misc plugins
   use {
      "windwp/nvim-autopairs",
      disable = not plugin_status.cmp,
      after = "nvim-cmp",
      config = override_req("nvim_autopairs", "(plugins.configs.others).autopairs()"),
   }

   use {
      "glepnir/dashboard-nvim",
      disable = not plugin_status.dashboard,
      config = override_req("dashboard", "plugins.configs.dashboard"),
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
      config = override_req("nvim_comment", "(plugins.configs.others).comment()"),
      setup = function()
         require("core.mappings").comment()
      end,
   }

   -- file managing , picker etc
   use {
      "kyazdani42/nvim-tree.lua",
      cmd = { "NvimTreeToggle", "NvimTreeFocus" },
      config = override_req("nvim_tree", "plugins.configs.nvimtree"),
      setup = function()
         require("core.mappings").nvimtree()
      end,
   }

   use {
      "nvim-telescope/telescope.nvim",
      cmd = "Telescope",
      requires = {
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
      config = override_req("telescope", "plugins.configs.telescope"),
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
      config = override_req("truezen", "plugins.configs.zenmode"),
      setup = function()
         require("core.mappings").truezen()
      end,
   }

   require("core.hooks").run("install_plugins", use)
end)
