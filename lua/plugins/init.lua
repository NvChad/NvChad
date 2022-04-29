local present, packer = pcall(require, "plugins.packerInit")

if not present then
   return false
end

local use = packer.use

return packer.startup(function()
   local plugin_settings = require("core.utils").load_config().plugins
   local override_req = require("core.utils").override_req

   vim.api.nvim_set_keymap(
   "v",
   "<F3>",
   ":<c-u>HSHighlight 1<CR>",
   {
       noremap = true,
       silent = true
   }
   )

   vim.api.nvim_set_keymap(
   "v",
   "<F4>",
   ":<c-u>HSRmHighlight<CR>",
   {
       noremap = true,
       silent = true
   }
   )

   -- this is arranged on the basis of when a plugin starts

   -- this is the nvchad core repo containing utilities for some features like theme swticher, no need to lazy load

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
      config = override_req("nvim_web_devicons", "plugins.configs.icons"),
   }

   use {
      "famiu/feline.nvim",
      disable = not plugin_settings.status.feline,
      after = "nvim-web-devicons",
      config = override_req("feline", "plugins.configs.statusline"),
   }

   use {
      "akinsho/bufferline.nvim",
      disable = not plugin_settings.status.bufferline,
      after = "nvim-web-devicons",
      config = override_req("bufferline", "plugins.configs.bufferline"),
      setup = function()
         require("core.mappings").bufferline()
      end,
   }

   use {
      "lukas-reineke/indent-blankline.nvim",
      disable = not plugin_settings.status.blankline,
      event = "BufRead",
      config = override_req("indent_blankline", "(plugins.configs.others).blankline()"),
   }

   use {
      "norcalli/nvim-colorizer.lua",
      disable = not plugin_settings.status.colorizer,
      event = "BufRead",
      config = override_req("nvim_colorizer", "(plugins.configs.others).colorizer()"),
   }

  -- Syntax highlighting
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    event = "BufRead",
    cmd = {
      "TSInstall",
      "TSInstallInfo",
      "TSInstallSync",
      "TSUninstall",
      "TSUpdate",
      "TSUpdateSync",
      "TSDisableAll",
      "TSEnableAll",
    },
      config = override_req("nvim_treesitter", "plugins.configs.treesitter"),
  }

   -- git stuff
   use {
      "lewis6991/gitsigns.nvim",
      disable = not plugin_settings.status.gitsigns,
      opt = true,
      config = override_req("gitsigns", "(plugins.configs.others).gitsigns()"),
      setup = function()
         require("core.utils").packer_lazy_load "gitsigns.nvim"
      end,
   }

   -- lsp stuff

    -- LSP manager
  use {
    "williamboman/nvim-lsp-installer",
    event = "BufRead",
    cmd = {
      "LspInstall",
      "LspInstallInfo",
      "LspPrintInstalled",
      "LspRestart",
      "LspStart",
      "LspStop",
      "LspUninstall",
      "LspUninstallAll",
    },
  }

   use {
      "neovim/nvim-lspconfig",
      opt = true,
      setup = function()
         require("core.utils").packer_lazy_load "nvim-lspconfig"
         -- reload the current file so lsp actually starts for it
         vim.defer_fn(function()
            vim.cmd 'if &ft == "packer" | echo "" | else | silent! e %'
         end, 0)
      end,
      config = override_req("lspconfig", "plugins.configs.lspconfig"),
   }

   use {
      "ray-x/lsp_signature.nvim",
      disable = not plugin_settings.status.lspsignature,
      after = "nvim-lspconfig",
      config = override_req("signature", "(plugins.configs.others).signature()"),
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
      disable = not plugin_settings.status.esc_insertmode,
      event = "InsertEnter",
      config = override_req("better_escape", "(plugins.configs.others).better_escape()"),
   }

   -- load luasnips + cmp related in insert mode only

   use {
      "rafamadriz/friendly-snippets",
      disable = not plugin_settings.status.cmp,
      event = "InsertEnter",
   }

   use {
      "hrsh7th/nvim-cmp",
      disable = not plugin_settings.status.cmp,
      after = "friendly-snippets",
      config = override_req("nvim_cmp", "plugins.configs.cmp"),
   }

   use {
      "L3MON4D3/LuaSnip",
      disable = not plugin_settings.status.cmp,
      wants = "friendly-snippets",
      after = "nvim-cmp",
      config = override_req("luasnip", "(plugins.configs.others).luasnip()"),
   }

   use {
      "saadparwaiz1/cmp_luasnip",
      disable = not plugin_settings.status.cmp,
      after = "LuaSnip",
   }

   use {
      "hrsh7th/cmp-nvim-lua",
      disable = not plugin_settings.status.cmp,
      after = "cmp_luasnip",
   }

   use {
      "hrsh7th/cmp-nvim-lsp",
      disable = not plugin_settings.status.cmp,
      after = "cmp-nvim-lua",
   }

   use {
      "hrsh7th/cmp-buffer",
      disable = not plugin_settings.status.cmp,
      after = "cmp-nvim-lsp",
   }

   use {
      "hrsh7th/cmp-path",
      disable = not plugin_settings.status.cmp,
      after = "cmp-buffer",
   }
   -- misc plugins
   use {
      "windwp/nvim-autopairs",
      disable = not plugin_settings.status.autopairs,
      after = plugin_settings.options.autopairs.loadAfter,
      config = override_req("nvim_autopairs", "(plugins.configs.others).autopairs()"),
   }

   use {
      "glepnir/dashboard-nvim",
      disable = not plugin_settings.status.dashboard,
      config = override_req("dashboard", "plugins.configs.dashboard"),
      setup = function()
         require("core.mappings").dashboard()
      end,
   }

   --[[
   use {
      "numToStr/Comment.nvim",
      disable = not plugin_settings.status.comment,
      module = "Comment",
      config = override_req("nvim_comment", "(plugins.configs.others).comment()"),
      setup = function()
         require("core.utils").packer_lazy_load "Comment.nvim"
         require("core.mappings").comment()
      end,
   }
   --]]

   -- file managing , picker etc
   use {
      "kyazdani42/nvim-tree.lua",
      disable = not plugin_settings.status.nvimtree,
      cmd = { "NvimTreeToggle", "NvimTreeFocus" },
      config = override_req("nvim_tree", "plugins.configs.nvimtree"),
      setup = function()
         require("core.mappings").nvimtree()
      end,
   }

   use {
      "nvim-telescope/telescope.nvim",
      module = "telescope",
      cmd = "Telescope",
      requires = {
         {
            "nvim-telescope/telescope-fzf-native.nvim",
            run = "make",
         },
         {
            "nvim-telescope/telescope-media-files.nvim",
            disable = not plugin_settings.status.telescope_media,
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
        "github/copilot.vim"
   }
   -- load user defined plugins
   require("core.hooks").run("install_plugins", use)
end)
