local M = {
   ui = {
      theme = "onedark",
      fav_themes = { "onedark", "gruvchad" }, -- for theme toggle
      theme_toggler = false,
      hidden_statusline = {
         -- these are filetypes, not pattern matched
         "NvimTree",
         "toggleterm",
      },
   },
   options = {
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
      numberwidth = 2,
      expandtab = true,
      shiftwidth = 2,
      smartindent = true,
      mapleader = " ",
      autosave = false,
      enable_insertNav = true, -- navigation in insertmode
   },
   -- enable and disable plugins (true for disable)
   plugin_status = {
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
   },
   -- make sure you dont use same keys twice
   mappings = {
      truezen = {
         ataraxisMode = "<leader>zz",
         minimalisticmode = "<leader>zm",
         focusmode = "<leader>zf",
      },
      comment_nvim = {
         comment_toggle = "<leader>/",
      },
      nvimtree = {
         treetoggle = "<C-n>",
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
         close = "<S-x>",
         cycleNext = "<TAB>",
         cyclePrev = "<S-Tab>",
      },
      fugitive = {
         Git = "<leader>gs",
         diffget_2 = "<leader>gh",
         diffget_3 = "<leader>gl",
         git_blame = "<leader>gb",
      },
      toggleterm = {
         toggle_window = "<leader>w",
         toggle_vert = "<leader>v",
         toggle_hori = "<leader>h",
         hide_term = "JK",
      },
      insert_nav = {
         forward = "<C-l>",
         backward = "<C-h>",
         top_of_line = "<C-a>",
         end_of_line = "<C-e>",
         prev_line = "<C-j>",
         next_line = "<C-k>",
      },
      misc = {
         esc_Termmode = "jk",
         copywhole_file = "<C-a>",
         toggle_linenr = "<leader>n",
         theme_toggle = "<leader>x",
      },
   },
}

return M
