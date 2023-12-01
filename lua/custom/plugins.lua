local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options
  {"mhinz/vim-startify"},
  {
    "xolox/vim-session",
    lazy = false,
    dependencies = {
      "xolox/vim-misc",
      "mhinz/vim-startify",
      "nvim-tree/nvim-tree.lua",
    },
    config = function()
      require "custom.configs.session"
    end,
  },
  {"HUAHUAI23/telescope-session.nvim"},
  {
    "neovim/nvim-lspconfig", 
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    init = function() 
        require('nvim-treesitter.install').compilers = { 'clang' }
    end,
  },
  {
    "williamboman/mason.nvim", 
    opts = overrides.mason,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
    lazy = false,
  },
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require "custom.configs.null-ls"
    end,
  },
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", ".root" },
        respect_buf_cwd = true,
        detection_methods = { "pattern", "lsp" },
        update_focused_file = {
          enable = true,
          update_root = true,
        },
      }
    end,
  },
  {"nvim-pack/nvim-spectre"},
  {"ojroques/nvim-osc52"},
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function()
      require("dapui").setup()
    end,
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      require "custom.configs.dap"
    end,
  },
  {"folke/trouble.nvim"},
  {
    "voldikss/vim-floaterm",
    lazy = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup {
        sections = {
          lualine_b = { { "%{fnamemodify(v:this_session,':t')}" }, "branch", "diff", "diagnostics" },
          lualine_c = { { "filename", path = 1 } },
        },
      }
    end,
  },
  {
    "karb94/neoscroll.nvim",
    lazy = false,
    config = function()
      require("neoscroll").setup({
        -- All these keys will be mapped to their corresponding default scrolling animation
        mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
        hide_cursor = true, -- Hide cursor while scrolling
        stop_eof = true, -- Stop at <EOF> when scrolling downwards
        respect_scrolloff = false, -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        easing_function = nil, -- Default easing function
        pre_hook = nil, -- Function to run before the scrolling animation starts
        post_hook = nil, -- Function to run after the scrolling animation ends
        performance_mode = false, -- Disable "Performance Mode" on all buffers.
      })
    end,
  },
  {
    "ethanholz/nvim-lastplace",
    event = "BufRead",
    lazy = false,
    config = function()
      require("nvim-lastplace").setup {
        lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
        lastplace_ignore_filetype = {
          "gitcommit",
          "gitrebase",
          "svn",
          "hgcommit",
        },
        lastplace_open_folds = true,
      }
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = {"nvim-lua/plenary.nvim"},
    config = function()
      require("todo-comments").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        keywords = {
          TODO = { icon = " ", color = "info", alt = { "todo" } },
        },
        -- highlighting of the line containing the todo comment
        -- * before: highlights before the keyword (typically comment characters)
        -- * keyword: highlights of the keyword
        -- * after: highlights after the keyword (todo text)
        highlight = {
          multiline = true, -- enable multine todo comments
          multiline_pattern = "^.", -- lua pattern to match the next multiline from the start of the matched keyword
          multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
          before = "", -- "fg" or "bg" or empty
          keyword = "wide", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
          after = "fg", -- "fg" or "bg" or empty
          pattern = [[//.*<(KEYWORDS)\s*:*]], -- pattern or table of patterns, used for highlightng (vim regex)
          comments_only = true, -- uses treesitter to match keywords in comments only
          max_line_len = 400, -- ignore lines longer than this
          exclude = {}, -- list of file types to exclude highlighting
        },
        search = {
          command = "rg",
          args = {
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
          },
          -- regex that will be used to match keywords.
          -- don't replace the (KEYWORDS) placeholder
          pattern = [[\b(KEYWORDS)\b]],
        },
      }
    end,
  },
  {
    "phaazon/hop.nvim",
    version = "v2",
    config = function()
      require("hop").setup {}
    end,
  },
  {
    "skywind3000/asyncrun.vim",
  },
  {
    "skywind3000/asynctasks.vim",
    lazy = false,
    dependencies = {"skywind3000/asyncrun.vim"},
    config = function()
      require "custom.configs.asynctasks"
    end,
  },
  {
    "GustavoKatel/telescope-asynctasks.nvim",
    lazy = false,
    -- after = "asynctasks.vim",
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    dependencies = {"junegunn/fzf"},
  },
  {"nvim-telescope/telescope-live-grep-args.nvim"},
  {
    "gbprod/yanky.nvim",
    config = function()
      require("yanky").setup {}
    end,
  },
  {
    "leoluz/nvim-dap-go",
    config = function()
      require("dap-go").setup {
        -- Additional dap configurations can be added.
        -- dap_configurations accepts a list of tables where each entry
        -- represents a dap configuration. For more details do:
        -- :help dap-configuration
        dap_configurations = {
          {
            -- Must be "go" or it will be ignored by the plugin
            type = "go",
            name = "Attach remote",
            mode = "remote",
            request = "attach",
          },
          {
            type = "go",
            name = "DebugFolder",
            request = "launch",
            program = "${workspaceFolder}",
          },
        },
        -- delve configurations
        delve = {
          -- time to wait for delve to initialize the debug session.
          -- default to 20 seconds
          initialize_timeout_sec = 20,
          -- a string that defines the port to start delve debugger.
          -- default to string "${port}" which instructs nvim-dap
          -- to start the process in a random available port
          port = "38697",
        },
      }
    end,
  },
  {"sebdah/vim-delve"},
  {
    "kristijanhusak/vim-dadbod-ui",
    lazy = false,
    dependencies = {"tpope/vim-dadbod", "kristijanhusak/vim-dadbod-completion"},
    config = function()
      vim.api.nvim_exec(
        [[
        let g:db_ui_execute_on_save = 0
        let g:db_ui_show_database_icon = 1
        let g:db_ui_use_nerd_fonts = 1
        autocmd FileType sql,mysql nmap <buffer> <M-w> <Plug>(DBUI_ExecuteQuery)
        ]],
        true
      )
    end,
  },
  {
    "kristijanhusak/vim-dadbod-completion",
    dependencies = {"hrsh7th/nvim-cmp"},
    config = function()
      require "custom.configs.dad"
    end,
  },
  {"tpope/vim-dadbod"},
  {
    "kevinhwang91/nvim-bqf",
    config = function()
      require "custom.configs.qf"
    end,
  },
  {
    "junegunn/fzf",
    run = function()
      vim.fn["fzf#install"]()
    end,
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "kkoomen/vim-doge",
    lazy = false,
    build = ":call doge#install()",
  },
}
return plugins
