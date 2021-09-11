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

       -- 指示快捷键
    use("folke/which-key.nvim")
    -- 增强的状态栏
    use("vim-airline/vim-airline")
    -- 状态栏主题包
    use("vim-airline/vim-airline-themes")
    -- 增强标签页栏
    use("akinsho/nvim-bufferline.lua")
    -- 颜色主题
    use("sainnhe/sonokai")
    -- 显示文件类型图标
    use("ryanoasis/vim-devicons")

    -- 显示出尾部的无用空格
    use("ntpeters/vim-better-whitespace")
    -- 彩虹显示匹配的括号
    use("luochen1990/rainbow")
    -- 高亮光标下相同的单词
    use("RRethy/vim-illuminate")

    -- 管理 fcitx 状态
    use({ "lilydjwg/fcitx.vim", branch = "fcitx5" })
    -- 翻译插件
    use("voldikss/vim-translate-me")
    -- 拼写检查
    use("kamykn/spelunker.vim")
    -- 支持 editorconfig
    use("editorconfig/editorconfig-vim")

    -- 集成 git 支持
    -- 信号槽显示来自版本控制的修改状态, diff 跳转与显示
    use("mhinz/vim-signify")
    -- 在状态栏下面显示 git 信息
    use("zivyangll/git-blame.vim")
    -- 在当前行显示 git 信息
    use("APZelos/blamer.nvim")

    -- 侧栏显示文件结构大纲
    use("liuchengxu/vista.vim")
    -- terminal 增强
    use("voldikss/vim-floaterm")

    -- 记忆上次文件位置
    use("farmergreg/vim-lastplace")
    -- 在所有的补全列表中使用 <tag> 导航
    use("ervandew/supertab")
    -- 提权保存文件
    use("lambdalisue/suda.vim")
    -- 快速移动
    use("easymotion/vim-easymotion")
    -- use "phaazon/hop.nvim"

    -- 成对操作括号和引号等
    use("tpope/vim-surround")
    -- use "machakann/vim-sandwich"

    -- 快捷注释文本
    use("scrooloose/nerdcommenter")
    -- 语法检查
    use("w0rp/ale")
    -- 自动补全, lsp-client
    use({ "neoclide/coc.nvim", branch = "release" })

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
      config = function()
         require "plugins.configs.icons"
      end,
   }

   use {
      "famiu/feline.nvim",
      disable = not plugin_status.feline,
      after = "nvim-web-devicons",
      config = function()
         require "plugins.configs.statusline"
      end,
   }

   use {
      "akinsho/bufferline.nvim",
      disable = not plugin_status.bufferline,
      after = "nvim-web-devicons",
      config = function()
         require "plugins.configs.bufferline"
      end,
      setup = function()
         require("core.mappings").bufferline()
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

   use {
      "nvim-treesitter/nvim-treesitter",
      branch = "0.5-compat",
      event = "BufRead",
      config = function()
         require "plugins.configs.treesitter"
      end,
   }

   -- git stuff
   use {
      "lewis6991/gitsigns.nvim",
      disable = not plugin_status.gitsigns,
      opt = true,
      config = function()
         require "plugins.configs.gitsigns"
      end,
      setup = function()
         require("core.utils").packer_lazy_load "gitsigns.nvim"
      end,
   }

   -- smooth scroll
   use {
      "karb94/neoscroll.nvim",
      disable = not plugin_status.neoscroll,
      opt = true,
      config = function()
         require("plugins.configs.others").neoscroll()
      end,
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
      config = function()
         require("plugins.configs.others").autosave()
      end,
      cond = function()
         return require("core.utils").load_config().options.plugin.autosave == true
      end,
   }

   use {
      "jdhao/better-escape.vim",
      disable = not plugin_status.esc_insertmode,
      event = "InsertEnter",
      setup = function()
         require("plugins.configs.others").better_escape()
      end,
   }

   -- load luasnips + cmp related in insert mode only

   use {
      "rafamadriz/friendly-snippets",
      event = "InsertEnter",
   }

   use {
      "hrsh7th/nvim-cmp",
      after = "friendly-snippets",
      config = function()
         require "plugins.configs.cmp"
      end,
   }

   use {
      "L3MON4D3/LuaSnip",
      wants = "friendly-snippets",
      after = "nvim-cmp",
      config = function()
         require("plugins.configs.others").luasnip()
      end,
   }

   use {
      "saadparwaiz1/cmp_luasnip",
      after = "LuaSnip",
   }

   use {
      "hrsh7th/cmp-nvim-lua",
      after = "cmp_luasnip",
   }

   use {
      "hrsh7th/cmp-nvim-lsp",
      after = "cmp-nvim-lua",
   }

   use {
      "hrsh7th/cmp-buffer",
      after = "cmp-nvim-lsp",
   }

   -- misc plugins
   use {
      "windwp/nvim-autopairs",
      after = "nvim-cmp",
      config = function()
         require("plugins.configs.others").autopairs()
      end,
   }

   use {
      "glepnir/dashboard-nvim",
      disable = not plugin_status.dashboard,
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
