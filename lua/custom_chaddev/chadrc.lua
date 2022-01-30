local M = {}

-- require('impatient')
-- require('impatient').enable_profile()

vim.g.python_host_skip_check=1

M.plugins = {
   --default_plugin_config_replace = tbl
   default_plugin_override = { 
      {
        "akinsho/bufferline.nvim",
         disable = true,
      },
      {
         "nvim-telescope/telescope.nvim",
         disable = true,
      },
   },
   default_plugin_remove= {
      "kyazdani42/nvim-tree.lua",
   },
}
M.options = {
   -- NeoVim/Vim options
   clipboard = "unnamedplus",
   cmdheight = 1,
   ruler = false,
   hidden = true,
   ignorecase = true,
   mapleader = " ",
   mouse = "",
   number = true,
   nav_wrapper = true,
   -- relative numbers in normal mode tool at the bottom of options.lua
   numberwidth = 2,
   relativenumber = true,
   expandtab = true,
   shiftwidth = 3,
   smartindent = true,
   tabstop = 8, -- Number of spaces that a <Tab> in the file counts for
   timeoutlen = 400,
   -- interval for writing swap file to disk, also used by gitsigns
   updatetime = 250,
   undofile = true, -- keep a permanent undo (across restarts)
   -- NvChad options
   nvChad = {
      copy_cut = true, -- copy cut text ( x key ), visual and normal mode
      copy_del = true, -- copy deleted text ( dd key ), visual and normal mode
      insert_nav = true, -- navigation in insertmode
      window_nav = true,
      theme_toggler = false,
      -- used for updater
      update_url = "https://github.com/NvChad/NvChad",
      update_branch = "main",
   }
}

-- ui configs
M.ui = {
   --hl_override = "custom.plugins.overrides.hl_override",
   italic_comments = true,
   transparency = true,
   theme = "onedark",
}

-- these are plugin related options

M.mappings = {plugins = {}}

return M
