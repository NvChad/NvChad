-- IMPORTANT NOTE : This is default config, so dont change anything here.
-- use custom/chadrc.lua instead

local M = {}

M.options = {

   path = "", -- path to your file that overrides core.options!

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
   terminal = {
      behavior = {
         close_on_exit = true,
      },
      window = {
         vsplit_ratio = 0.5,
         split_ratio = 0.4,
      },
      location = {
         horizontal = "rightbelow",
         vertical = "rightbelow",
         float = {
            relative = "editor",
            row = 0.3,
            col = 0.25,
            width = 0.5,
            height = 0.4,
            border = "single",
         },
      },
   },
}

---- UI -----

M.ui = {
   hl_override = "", -- path of your file that contains highlights
   colors = "", -- path of your file that contains colors
   theme = "onedark", -- default theme
   transparency = false,
}

M.plugins = {
   override = {},

   options = {
      packer = {
         init_file = "plugins.packerInit",
      },
      lspconfig = {
         setup_lspconf = "", -- path of file linked to lspconfig
      },
      statusline = {
         style = "default", -- default/round/slant/block/arrow
      },
   },

   -- define/modify/remove plugins and  here :p
   -- you can change their mappings too
   user = {},
}

-- non plugin only
M.mappings = {
   misc = nil,
}

return M
