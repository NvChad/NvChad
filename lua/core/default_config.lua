-- IMPORTANT NOTE : This is default config, so dont change anything here.
-- use custom/chadrc.lua instead

local M = {}

M.options = {
   -- custom = {}
   -- general nvim/vim options , check :h optionname to know more about an option

   clipboard = "unnamedplus",
   cmdheight = 1,
   ruler = false,
   hidden = true,
   ignorecase = true,
   smartcase = true,
   mapleader = " ",
   mouse = "a",
   number = true,
   numberwidth = 2,
   relativenumber = false,
   expandtab = true,
   shiftwidth = 2,
   smartindent = true,
   tabstop = 8,
   timeoutlen = 400,
   updatetime = 250,
   undofile = true,
   fillchars = { eob = " " },
   shadafile = vim.opt.shadafile,

   -- NvChad options
   nvChad = {
      copy_cut = true, -- copy cut text ( x key ), visual and normal mode
      copy_del = true, -- copy deleted text ( dd key ), visual and normal mode
      insert_nav = true, -- navigation in insertmode
      window_nav = true,
      terminal_numbers = false,

      -- updater
      update_url = "https://github.com/NvChad/NvChad",
      update_branch = "main",
   },
}

---- UI -----

M.ui = {
   hl_override = "", -- path of your file that contains highlights
   italic_comments = false,
   theme = "onedark", -- default theme

   -- Change terminal bg to nvim theme's bg color so it'll match well
   -- For Ex : if you have onedark set in nvchad, set onedark's bg color on your terminal
   transparency = false,
}

---- PLUGIN OPTIONS ----

M.plugins = {
   -- enable/disable plugins (false for disable)
   status = {
      blankline = true, -- indentline stuff
      bufferline = true, -- manage and preview opened buffers
      colorizer = false, -- color RGB, HEX, CSS, NAME color codes
      comment = true, -- easily (un)comment code, language aware
      alpha = false, -- dashboard
      better_escape = true, -- map to <ESC> with no lag
      feline = true, -- statusline
      gitsigns = true,
      lspsignature = true, -- lsp enhancements
      vim_matchup = true, -- improved matchit
      cmp = true,
      nvimtree = true,
      autopairs = true,
   },
   options = {
      packer = {
         init_file = "plugins.packerInit",
      },
      autopairs = { loadAfter = "nvim-cmp" },
      cmp = {
         lazy_load = true,
      },
      lspconfig = {
         setup_lspconf = "", -- path of file containing setups of different lsps
      },
      nvimtree = {
         -- packerCompile required after changing lazy_load
         lazy_load = true,
      },
      luasnip = {
         snippet_path = {},
      },
      statusline = {
         -- hide, show on specific filetypes
         hidden = {
            "help",
            "NvimTree",
            "terminal",
            "alpha",
         },
         shown = {},

         -- truncate statusline on small screens
         shortline = true,
         style = "default", -- default, round , slant , block , arrow
      },
      esc_insertmode_timeout = 300,
   },
   default_plugin_config_replace = {},
   default_plugin_remove = {},
   install = nil,
}

-- Don't use a single keymap twice

--- MAPPINGS ----

-- non plugin
M.mappings = {
   -- custom = {}, -- custom user mappings

   misc = {
      cheatsheet = "<leader>ch",
      close_buffer = "<leader>x",
      copy_whole_file = "<C-a>", -- copy all contents of current buffer
      copy_to_system_clipboard = "<C-c>", -- copy selected text (visual mode) or curent line (normal)
      line_number_toggle = "<leader>n", -- toggle line number
      relative_line_number_toggle = "<leader>rn",
      update_nvchad = "<leader>uu",
      new_buffer = "<S-t>",
      new_tab = "<C-t>b",
      save_file = "<C-s>", -- save file using :w
   },

   -- navigation in insert mode, only if enabled in options

   insert_nav = {
      backward = "<C-h>",
      end_of_line = "<C-e>",
      forward = "<C-l>",
      next_line = "<C-k>",
      prev_line = "<C-j>",
      beginning_of_line = "<C-a>",
   },

   -- better window movement
   window_nav = {
      moveLeft = "<C-h>",
      moveRight = "<C-l>",
      moveUp = "<C-k>",
      moveDown = "<C-j>",
   },

   -- terminal related mappings
   terminal = {
      -- multiple mappings can be given for esc_termmode, esc_hide_termmode

      -- get out of terminal mode
      esc_termmode = { "jk" },

      -- get out of terminal mode and hide it
      esc_hide_termmode = { "JK" },
      -- show & recover hidden terminal buffers in a telescope picker
      pick_term = "<leader>W",

      -- spawn terminals
      new_horizontal = "<leader>h",
      new_vertical = "<leader>v",
      new_window = "<leader>w",
   },
}

-- plugins related mappings
-- To disable a mapping, equate the variable to "" or false or nil in chadrc
M.mappings.plugins = {
   bufferline = {
      next_buffer = "<TAB>",
      prev_buffer = "<S-Tab>",
   },
   comment = {
      toggle = "<leader>/",
   },

   -- map to <ESC> with no lag
   better_escape = { -- <ESC> will still work
      esc_insertmode = { "jk" }, -- multiple mappings allowed
   },

   lspconfig = {
      declaration = "gD",
      definition = "gd",
      hover = "K",
      implementation = "gi",
      signature_help = "gk",
      add_workspace_folder = "<leader>wa",
      remove_workspace_folder = "<leader>wr",
      list_workspace_folders = "<leader>wl",
      type_definition = "<leader>D",
      rename = "<leader>ra",
      code_action = "<leader>ca",
      references = "gr",
      float_diagnostics = "ge",
      goto_prev = "[d",
      goto_next = "]d",
      set_loclist = "<leader>q",
      formatting = "<leader>fm",
   },

   nvimtree = {
      toggle = "<C-n>",
      focus = "<leader>e",
   },

   telescope = {
      buffers = "<leader>fb",
      find_files = "<leader>ff",
      find_hiddenfiles = "<leader>fa",
      git_commits = "<leader>cm",
      git_status = "<leader>gt",
      help_tags = "<leader>fh",
      live_grep = "<leader>fw",
      oldfiles = "<leader>fo",
      themes = "<leader>th", -- NvChad theme picker
   },
}

return M
