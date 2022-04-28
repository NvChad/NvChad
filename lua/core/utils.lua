local M = {}

local cmd = vim.cmd

M.close_buffer = function(force)
   if force or not vim.bo.buflisted or vim.bo.buftype == 'nofile' then
      cmd ":bd!"
   else
      cmd "bd"
   end
end

M.load_config = function()
   local conf = require "core.default_config"

   -- attempt to load and merge a user config
   local chadrc_exists = vim.fn.filereadable(vim.fn.stdpath "config" .. "/lua/custom/chadrc.lua") == 1
   if chadrc_exists then
      -- merge user config if it exists and is a table; otherwise display an error
      local user_config = require "custom.chadrc"
      if type(user_config) == "table" then
         conf = vim.tbl_deep_extend("force", conf, user_config)
      else
         error "User config (chadrc.lua) *must* return a table!"
      end
   end

   return conf
end

M.map = function(mode, keys, command, opt)
   local options = { noremap = true, silent = true }

   if opt then
      options = vim.tbl_extend("force", options, opt)
   end

   if type(keys) == "table" then
      for _, keymap in ipairs(keys) do
         M.map(mode, keymap, command, opt)
      end
      return
   end

   vim.keymap.set(mode, keys, command, opt)
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

M.load_ifExists = function(module)
   if #module ~= 0 then
      if type(module) == "string" then
         require(module)

         -- file[1] = module & file[2] = function
      elseif type(module) == "table" then
         require(module[1])[module[2]]()
      end
   end
end

-- merge default/user plugin tables

M.plugin_list = function(default_plugins)
   local user_plugins = require("core.utils").load_config().plugins.user
   local plug_override = require("core.default_config").plugins.override

   -- merge default + user plugin table
   default_plugins = vim.tbl_deep_extend("force", default_plugins, user_plugins)

   local final_table = {}

   for key, _ in pairs(default_plugins) do
      default_plugins[key][1] = key

      final_table[#final_table + 1] = default_plugins[key]
      plug_override[#plug_override + 1] = default_plugins[key]
   end

   return final_table
end

M.load_override = function(default_table, plugin_name)
   local user_table = require("core.utils").load_config().plugins.override[plugin_name]

   if type(user_table) == "table" then
      default_table = vim.tbl_deep_extend("force", default_table, user_table)
   else
      default_table = default_table
   end

   return default_table
end

return M
