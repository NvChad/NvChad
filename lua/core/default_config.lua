-- IMPORTANT NOTE : This is default config, so dont change anything here.
-- chadrc overrides this file

local M = {}

M.options = {

   -- load your options here or load module with options1
   user = function() end,

   nvChad = {
      -- updater
      update_url = "https://github.com/NvChad/NvChad",
      update_branch = "main",
   },
}

---- UI -----

M.ui = {
   hl_override = {},
   changed_themes = {},
   theme_toggle = { "onedark", "one_light" },
   theme = "onedark", -- default theme
   transparency = false,
}

M.plugins = {
   override = {},
   remove = {},

   options = {
      lspconfig = {
         setup_lspconf = "", -- path of lspconfig file
      },
      statusline = {
         separator_style = "default", -- default/round/block
         file_info_style = "default", -- default/full_path
         config = "%!v:lua.require'ui.statusline'.run()",
      },
   },

   -- add, modify, remove plugins
   user = {},
}

-- check core.mappings for table structure
M.mappings = require "core.mappings"

return M
