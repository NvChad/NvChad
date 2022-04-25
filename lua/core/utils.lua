local M = {}

local cmd = vim.cmd

M.close_buffer = function(force)
  if force or not vim.bo.buflisted then cmd(":bd!") else cmd("bd") end
end

-- hide statusline
-- tables fetched from load_config function
M.hide_statusline = function()
   local hidden = require("core.utils").load_config().plugins.options.statusline.hidden
   local shown = require("core.utils").load_config().plugins.options.statusline.shown
   local api = vim.api
   local buftype = api.nvim_buf_get_option(0, "ft")

   -- shown table from config has the highest priority
   if vim.tbl_contains(shown, buftype) then
      api.nvim_set_option("laststatus", 2)
      return
   end

   if vim.tbl_contains(hidden, buftype) then
      api.nvim_set_option("laststatus", 0)
      return
   end

   api.nvim_set_option("laststatus", 2)
end

M.load_config = function()
   local conf = require "core.default_config"

   -- attempt to load and merge a user config
   local chadrc_exists = vim.fn.filereadable(vim.fn.stdpath "config" .. "/lua/custom/chadrc.lua") == 1
   if chadrc_exists then
      -- merge user config if it exists and is a table; otherwise display an error
      local user_config = require "custom.chadrc"
      if type(user_config) == 'table' then
         conf = vim.tbl_deep_extend("force", conf, user_config)
      else
         error("User config (chadrc.lua) *must* return a table!")
      end
   end

   return conf
end

M.map = function(mode, keys, command, opt)
   local options = { noremap = true, silent = true }
   if opt then
      options = vim.tbl_extend("force", options, opt)
   end

   -- all valid modes allowed for mappings
   -- :h map-modes
   local valid_modes = {
      [""] = true,
      ["n"] = true,
      ["v"] = true,
      ["s"] = true,
      ["x"] = true,
      ["o"] = true,
      ["!"] = true,
      ["i"] = true,
      ["l"] = true,
      ["c"] = true,
      ["t"] = true,
   }

   -- helper function for M.map
   -- can gives multiple modes and keys
   local function map_wrapper(sub_mode, lhs, rhs, sub_options)
      if type(lhs) == "table" then
         for _, key in ipairs(lhs) do
            map_wrapper(sub_mode, key, rhs, sub_options)
         end
      else
         if type(sub_mode) == "table" then
            for _, m in ipairs(sub_mode) do
               map_wrapper(m, lhs, rhs, sub_options)
            end
         else
            if valid_modes[sub_mode] and lhs and rhs then
               vim.api.nvim_set_keymap(sub_mode, lhs, rhs, sub_options)
            else
               sub_mode, lhs, rhs = sub_mode or "", lhs or "", rhs or ""
               print(
                  "Cannot set mapping [ mode = '" .. sub_mode .. "' | key = '" .. lhs .. "' | cmd = '" .. rhs .. "' ]"
               )
            end
         end
      end
   end

   map_wrapper(mode, keys, command, options)
end

-- load plugin after entering vim ui
M.packer_lazy_load = function(plugin, timer)
   if plugin then
      timer = timer or 0
      vim.defer_fn(function()
         require("packer").loader(plugin)
      end, timer)
   end
end

-- Highlights functions

-- Define bg color
-- @param group Group
-- @param color Color

M.bg = function(group, col)
   cmd("hi " .. group .. " guibg=" .. col)
end

-- Define fg color
-- @param group Group
-- @param color Color
M.fg = function(group, col)
   cmd("hi " .. group .. " guifg=" .. col)
end

-- Define bg and fg color
-- @param group Group
-- @param fgcol Fg Color
-- @param bgcol Bg Color
M.fg_bg = function(group, fgcol, bgcol)
   cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

-- Override default config of a plugin based on the path provided in the chadrc
-- Arguments:
--   1st - name of plugin
--   2nd - default config path
--   3rd - optional function name which will called from default_config path
--   e.g: if given args - "telescope", "plugins.configs.telescope", "setup"
--        then return "require('plugins.configs.telescope').setup()"
--        if 3rd arg not given, then return "require('plugins.configs.telescope')"
-- if override is a table, mark set the override flag for the default config to true
-- override flag being true tells the plugin to call tbl_override_req as part of configuration

M.override_req = function(name, default_config, config_function)
   local override, apply_table_override =
      require("core.utils").load_config().plugins.default_plugin_config_replace[name], "false"
   local result = default_config
   if type(override) == "string" and override ~= "" then
      return "require('" .. override .. "')"
   elseif type(override) == "table" then
      apply_table_override = "true"
   elseif type(override) == "function" then
      return override
   end

   result = "('" .. result .. "')"
   if type(config_function) == "string" and config_function ~= "" then
      -- add the . to call the functions and concatenate true or false as argument
      result = result .. "." .. config_function .. "(" .. apply_table_override .. ")"
   end

   return "require" .. result
end

-- Override parts of default config of a plugin based on the table provided in the chadrc

-- FUNCTION: tbl_override_req, use `chadrc` plugin config override to modify default config if present
-- name = name inside `default_config` / `chadrc`
-- default_table = the default configuration table of the plugin
-- returns the modified configuration table
M.tbl_override_req = function(name, default_table)
   local override = require("core.utils").load_config().plugins.default_plugin_config_replace[name] or {}
   return vim.tbl_deep_extend("force", default_table, override)
end

--provide labels to plugins instead of integers
M.label_plugins = function(plugins)
   local plugins_labeled = {}
   for _, plugin in ipairs(plugins) do
      plugins_labeled[plugin[1]] = plugin
   end
   return plugins_labeled
end

-- remove plugins specified by user from the plugins table
M.remove_default_plugins = function(plugins)
   local removals = require("core.utils").load_config().plugins.default_plugin_remove or {}
   if not vim.tbl_isempty(removals) then
      for _, plugin in pairs(removals) do
         plugins[plugin] = nil
      end
   end
   return plugins
end

-- append user plugins to default plugins
M.add_user_plugins = function(plugins)
   local user_Plugins = require("core.utils").load_config().plugins.install or {}
   if type(user_Plugins) == "string"
      then user_Plugins=require(user_Plugins)
   end
   if not vim.tbl_isempty(user_Plugins) then
      for _, v in pairs(user_Plugins) do
         plugins[v[1]] = v
      end
   end
   return plugins
end

return M
