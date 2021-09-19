-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater

local M = {}
M.options, M.ui, M.mappings, M.plugins = {}, {}, {}, {}

-- To use this file, copy the strucutre of `core/default_config.lua`,
-- then define your new var, an example of setting relative number:

-- M.options = {
--    relativenumber = true,
-- }


-- user custom mappings
-- format: name = { "mode" , "keys" , "cmd" , "options"}
  -- name: can be empty or something unique with repect to other custom mappings
  --    { mode, key, cmd } or name = { mode, key, cmd }
  -- mode: usage: mode or { mode1, mode2 }, multiple modes allowed, available modes => :h map-modes,
  -- keys: multiple keys allowed, same synxtax as modes
  -- cmd:  for vim commands, must use ':' at start and add <CR> at the end if want to execute
  -- options: see :h nvim_set_keymap() opts section
M.mappings.custom = {
   -- clear_all = {
   --    "n",
   --    "<leader>cc",
   --    "gg0vG$d",
   -- },
}

-- NvChad included plugin options & overrides
M.plugins = {
  options = {
   --  lspconfig = {
   --    -- servers = {"html", "cssls"}
   --    servers = {},
   -- },
  },
  -- To change the Packer `config` of a plugin that comes with NvChad,
  -- add a table entry below matching the plugin github name
  --              '-' -> '_', remove any '.lua', '.nvim' extensions
  -- this string will be called in a `require`
  --              use "(custom.configs).my_func()" to call a function
  --              use "custom.blankline" to call a file
  default_plugin_config_replace = {
    
  },
}

return M
