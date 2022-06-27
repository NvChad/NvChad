-- Chadrc overrides this file

local M = {}

M.options = {
   -- load your options here or load module with options
   user = function() end,

   nvChad = {
      update_url = "https://github.com/NvChad/NvChad",
      update_branch = "main",
   },
}

M.ui = {
   -- hl = highlights
   hl_add = {},
   hl_override = {},
   changed_themes = {},
   theme_toggle = { "onedark", "one_light" },
   theme = "onedark", -- default theme
   transparency = false,

   statusline = {
      separator_style = "default", -- default/round/block/arrow
      config = "%!v:lua.require('ui.statusline').run()",
      override = {},
   },

   -- lazyload it when there are 1+ buffers
   tabufline = {
      enabled = true,
      lazyload = true,
      override = {},
   },
}

M.plugins = {
   override = {},
   remove = {},
   user = {},
   options = {
      lspconfig = {
         setup_lspconf = "", -- path of lspconfig file
      },
      luasnip = {
         snippet_paths = {""}, -- list of custom snippet locations
      },
   },
}

-- check core.mappings for table structure
M.mappings = require "core.mappings"

return M
