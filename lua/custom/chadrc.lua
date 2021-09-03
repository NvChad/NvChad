-- IMPORTANT NOTE : This is the user config, can be edited. Will be preserved if updated with internal updater

local M = {}
M.ui, M.options, M.plugin_status, M.mappings, M.custom = {}, {}, {}, {}, {}

-- To use this file, copy the strucutre of `core/default_config.lua`,
-- then define your new var, an example of setting relative number:

-- M.options = {
--    relativenumber = true,
-- }

-- user custom mappings
-- e.g: name = { "mode" , "keys" , "cmd" , "options"}
-- name: can be empty or something unique with repect to other custom mappings
--    { mode, key, cmd } or name = { mode, key, cmd }
-- mode: usage: mode or { mode1, mode2 }, multiple modes allowed, available modes => :h map-modes,
-- keys: multiple keys allowed, same synxtax as modes
-- cmd:  for vim commands, must use ':' at start and add <CR> at the end if want to execute
-- options: see :h nvim_set_keymap() opts section
M.custom.mappings = {
   -- clear_all = {
   --    "n",
   --    "<leader>cc",
   --    "gg0vG$d",
   -- },
}

return M
