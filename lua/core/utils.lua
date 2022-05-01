local M = {}

local cmd = vim.cmd

M.close_buffer = function(force)
   if vim.bo.buftype == "terminal" then
      vim.api.nvim_win_hide(0)
      return
   end

   local fileExists = vim.fn.filereadable(vim.fn.expand "%p")
   local modified = vim.api.nvim_buf_get_option(vim.fn.bufnr(), "modified")

   -- if file doesnt exist & its modified
   if fileExists == 0 and modified then
      print "no file name? add it now!"
      return
   end

   force = force or not vim.bo.buflisted or vim.bo.buftype == "nofile"

   -- if not force, change to prev buf and then close current
   local close_cmd = force and ":bd!" or ":bp | bd" .. vim.fn.bufnr()
   vim.cmd(close_cmd)
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

-- remove plugins defined in chadrc
M.remove_default_plugins = function(plugins)
   local removals = require("core.utils").load_config().plugins.remove or {}
   if not vim.tbl_isempty(removals) then
      for _, plugin in pairs(removals) do
         plugins[plugin] = nil
      end
   end
   return plugins
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

-- Swap boolean with ease
M.swap_boolean = function()
   local c = vim.api.nvim_get_current_line()
   local subs = c:match "true" and c:gsub("true", "false") or c:gsub("false", "true")
   vim.api.nvim_set_current_line(subs)
end

return M
