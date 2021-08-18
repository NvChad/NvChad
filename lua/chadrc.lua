-- IMPORTANT NOTE : This is user config

local M = {}

M.ui = {
   theme = "onedark",
   -- for theme toggle
   fav_themes = {
      "onedark",
      "gruvchad",
   },
   theme_toggler = false,
   hidden_statusline = {
      -- these are filetypes, not pattern matched
      "NvimTree",
      -- "terminal", 
   },
}

M.options = {
   permanent_undo = true,
   ruler = false,
   hidden = true,
   ignorecase = true,
   mouse = "a",
   cmdheight = 1,
   updatetime = 250,
   timeoutlen = 400,
   clipboard = "unnamedplus",
   number = true,
   -- relative numbers in normal mode tool at the bottom of options.lua  
   relativenumber = false,
   numberwidth = 2,
   expandtab = true,
   shiftwidth = 2,
   smartindent = true,
   mapleader = " ",
   autosave = false,
   enable_insertNav = true, -- navigation in insertmode
}

-- enable and disable plugins (false for disable)
M.plugin_status = {
   -- UI
   nvim_bufferline = true,
   galaxyline = true,
   nvim_colorizer = true,
   dashboard_nvim = true,
   blankline = true,
   truezen_nvim = true,
   better_esc = true,
   -- lsp stuff
   lspkind = true,
   lspsignature = true,
   -- git stuff
   gitsigns = true,
   vim_fugitive = true,
   -- misc
   neoformat = true,
   vim_matchup = true,
   autosave_nvim = true,
   nvim_comment = true,
   neoscroll_nvim = true,
   telescope_media = true,
   cheatsheet = false,
}

-- make sure you dont use same keys twice
M.mappings = {
   -- plugin specific
   truezen = {
      ataraxisMode = "<leader>zz",
      minimalisticmode = "<leader>zm",
      focusmode = "<leader>zf",
   },
   comment_nvim = {
      comment_toggle = "<leader>/",
   },
   nvimtree = {
      treetoggle = "<C-n>", -- file manager
   },
   neoformat = {
      format = "<leader>fm",
   },
   dashboard = {
      open = "<leader>db",
      newfile = "<leader>fn",
      bookmarks = "<leader>bm",
      sessionload = "<leader>l",
      sessionsave = "<leader>s",
   },
   telescope = {
      live_grep = "<leader>fw",
      git_status = "<leader>gt",
      git_commits = "<leader>cm",
      find_files = "<leader>ff",
      buffers = "<leader>fb",
      help_tags = "<leader>fh",
      oldfiles = "<leader>fo",
      themes = "<leader>th",
   },
   telescope_media = {
      media_files = "<leader>fp",
   },
   chadsheet = {
      default_keys = "<leader>dk",
      user_keys = "<leader>uk",
   },
   bufferline = {
      new_buffer = "<S-t>",
      newtab = "<C-t>b",
      close = "<S-x>", -- close a buffer with custom func in utils.lua
      cycleNext = "<TAB>", -- next buffer
      cyclePrev = "<S-Tab>", -- previous buffer
   },
   fugitive = {
      Git = "<leader>gs",
      diffget_2 = "<leader>gh",
      diffget_3 = "<leader>gl",
      git_blame = "<leader>gb",
   },
   terms = { -- below are NvChad mappings, not plugin mappings
      esc_termmode = "jk",
      esc_hide_termmode = "JK",
      pick_term = "<leader>W", -- note: this is a telescope extension
      new_wind = "<leader>w",
      new_vert = "<leader>v",
      new_hori = "<leader>h",
   },
   -- navigation in insert mode
   insert_nav = {
      forward = "<C-l>",
      backward = "<C-h>",
      top_of_line = "<C-a>",
      end_of_line = "<C-e>",
      prev_line = "<C-j>",
      next_line = "<C-k>",
   },
   misc = {
      copywhole_file = "<C-a>",
      toggle_linenr = "<leader>n", -- show or hide line number
      theme_toggle = "<leader>x",
   },
}

M = vim.tbl_deep_extend("force", require "default_config", M)

return M
