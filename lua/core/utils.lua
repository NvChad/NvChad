_G.nvchad = {}

nvchad.close_buffer = function(force)
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

nvchad.load_config = function()
   local conf = require "core.default_config"
   local ignore_modes = { "mode_opts" }

   -- attempt to load and merge a user config
   local chadrc_exists = vim.fn.filereadable(vim.fn.stdpath "config" .. "/lua/custom/chadrc.lua") == 1
   if chadrc_exists then
      -- merge user config if it exists and is a table; otherwise display an error
      local user_config = require "custom.chadrc"
      if type(user_config) == "table" then
         conf.mappings = conf.mappings and nvchad.prune_key_map(conf.mappings, user_config.mappings, ignore_modes) or {}
         user_config.mappings = user_config.mappings and nvchad.prune_key_map(user_config.mappings, "rm_disabled", ignore_modes) or {}
         conf = vim.tbl_deep_extend("force", conf, user_config)
      else
         error "User config (chadrc.lua) *must* return a table!"
      end
   end

   return conf
end

-- reduces a given keymap to a table of modes each containing a list of key maps
nvchad.reduce_key_map = function(key_map, ignore_modes)
   local prune_keys = {}
   for _, modes in pairs(key_map) do
      for mode, mappings in pairs(modes) do
         if not vim.tbl_contains(ignore_modes, mode) then
            prune_keys[mode] = prune_keys[mode] and prune_keys[mode] or {}
            prune_keys[mode] = vim.list_extend(prune_keys[mode], vim.tbl_keys(mappings))
         end
      end
   end
   return prune_keys
end

-- remove disabled mappings from a given key map
nvchad.remove_disabled_mappings = function(key_map)
   local clean_map = {}
   if key_map == nil or key_map == "" then
      return key_map
   end
   if type(key_map) == "table" then
      for k, v in pairs(key_map) do
         if v ~= nil and v ~= "" then clean_map[k] = v end
      end
   end
   return clean_map
end

-- prune keys from a key map table by matching against another key map table
nvchad.prune_key_map = function(key_map, prune_map, ignore_modes)
   if not prune_map then return key_map end
   if not key_map then return prune_map end
   local prune_keys = type(prune_map) == "table" and nvchad.reduce_key_map(prune_map, ignore_modes)
       or { n = {}, v = {}, i = {}, t = {} }

   for ext, modes in pairs(key_map) do
      for mode, mappings in pairs(modes) do
         if not vim.tbl_contains(ignore_modes, mode) then
            -- filter mappings table so that only keys that are not in user_mappings are left
            for b, _ in pairs(mappings) do
               if prune_keys[mode] and vim.tbl_contains(prune_keys[mode], b) then
                  key_map[ext][mode][b] = nil
               end
            end
         end
         key_map[ext][mode] = nvchad.remove_disabled_mappings(mappings)
      end
   end

   return key_map
end

nvchad.map = function(mode, keys, command, opt)
   local options = { silent = true }

   if opt then
      options = vim.tbl_extend("force", options, opt)
   end

   if type(keys) == "table" then
      for _, keymap in ipairs(keys) do
         nvchad.map(mode, keymap, command, opt)
      end
      return
   end

   vim.keymap.set(mode, keys, command, opt)
end

-- For those who disabled whichkey
nvchad.no_WhichKey_map = function()
   local mappings = nvchad.load_config().mappings
   local ignore_modes = { "mode_opts" }

   for _, value in pairs(mappings) do
      for mode, keymap in pairs(value) do
         if not vim.tbl_contains(ignore_modes, mode) then
            for keybind, cmd in pairs(keymap) do
               -- disabled keys will not have cmd set
               if cmd ~= "" and cmd[1] then
                  nvchad.map(mode, keybind, cmd[1])
               end
            end
         end
      end
   end

   require("plugins.configs.others").misc_mappings()
end

-- load plugin after entering vim ui
nvchad.packer_lazy_load = function(plugin, timer)
   if plugin then
      timer = timer or 0
      vim.defer_fn(function()
         require("packer").loader(plugin)
      end, timer)
   end
end

-- remove plugins defined in chadrc
nvchad.remove_default_plugins = function(plugins)
   local removals = nvchad.load_config().plugins.remove or {}

   if not vim.tbl_isempty(removals) then
      for _, plugin in pairs(removals) do
         plugins[plugin] = nil
      end
   end

   return plugins
end

-- merge default/user plugin tables
nvchad.plugin_list = function(default_plugins)
   local user_plugins = nvchad.load_config().plugins.user

   -- merge default + user plugin table
   default_plugins = vim.tbl_deep_extend("force", default_plugins, user_plugins)

   local final_table = {}

   for key, _ in pairs(default_plugins) do
      default_plugins[key][1] = key

      final_table[#final_table + 1] = default_plugins[key]
   end

   return final_table
end

nvchad.load_override = function(default_table, plugin_name)
   local user_table = nvchad.load_config().plugins.override[plugin_name]

   if type(user_table) == "table" then
      default_table = vim.tbl_deep_extend("force", default_table, user_table)
   else
      default_table = default_table
   end

   return default_table
end
