local M = {}

local cmd = vim.cmd
M.close_buffer = function(force)
   -- This is a modification of a NeoVim plugin from
   -- Author: ojroques - Olivier Roques
   -- Src: https://github.com/ojroques/nvim-bufdel
   -- (Author has okayed copy-paste)

   -- Options
   local opts = {
      next = "cycle", -- how to retrieve the next buffer
      quit = false, -- exit when last buffer is deleted
      --TODO make this a chadrc flag/option
   }

   -- ----------------
   -- Helper functions
   -- ----------------

   -- Switch to buffer 'buf' on each window from list 'windows'
   local function switch_buffer(windows, buf)
      local cur_win = vim.fn.winnr()
      for _, winid in ipairs(windows) do
         winid = tonumber(winid) or 0
         vim.cmd(string.format("%d wincmd w", vim.fn.win_id2win(winid)))
         vim.cmd(string.format("buffer %d", buf))
      end
      vim.cmd(string.format("%d wincmd w", cur_win)) -- return to original window
   end

   -- Select the first buffer with a number greater than given buffer
   local function get_next_buf(buf)
      local next = vim.fn.bufnr "#"
      if opts.next == "alternate" and vim.fn.buflisted(next) == 1 then
         return next
      end
      for i = 0, vim.fn.bufnr "$" - 1 do
         next = (buf + i) % vim.fn.bufnr "$" + 1 -- will loop back to 1
         if vim.fn.buflisted(next) == 1 then
            return next
         end
      end
   end

   -- ----------------
   -- End helper functions
   -- ----------------

   local buf = vim.fn.bufnr()
   if vim.fn.buflisted(buf) == 0 then -- exit if buffer number is invalid
      vim.cmd "close"
      return
   end

   if #vim.fn.getbufinfo { buflisted = 1 } < 2 then
      if opts.quit then
         -- exit when there is only one buffer left
         if force then
            vim.cmd "qall!"
         else
            vim.cmd "confirm qall"
         end
         return
      end

      local chad_term, _ = pcall(function()
         return vim.api.nvim_buf_get_var(buf, "term_type")
      end)

      if chad_term then
         -- Must be a window type
         vim.cmd(string.format("setlocal nobl", buf))
         vim.cmd "enew"
         return
      end
      -- don't exit and create a new empty buffer
      vim.cmd "enew"
      vim.cmd "bp"
   end

   local next_buf = get_next_buf(buf)
   local windows = vim.fn.getbufinfo(buf)[1].windows

   -- force deletion of terminal buffers to avoid the prompt
   if force or vim.fn.getbufvar(buf, "&buftype") == "terminal" then
      local chad_term, type = pcall(function()
         return vim.api.nvim_buf_get_var(buf, "term_type")
      end)

      -- TODO this scope is error prone, make resilient
      if chad_term then
         if type == "wind" then
            -- hide from bufferline
            vim.cmd(string.format("%d bufdo setlocal nobl", buf))
            -- switch to another buff
            -- TODO switch to next buffer, this works too
            vim.cmd "BufferLineCycleNext"
         else
            local cur_win = vim.fn.winnr()
            -- we can close this window
            vim.cmd(string.format("%d wincmd c", cur_win))
            return
         end
      else
         switch_buffer(windows, next_buf)
         vim.cmd(string.format("bd! %d", buf))
      end
   else
      switch_buffer(windows, next_buf)
      vim.cmd(string.format("silent! confirm bd %d", buf))
   end
   -- revert buffer switches if user has canceled deletion
   if vim.fn.buflisted(buf) == 1 then
      switch_buffer(windows, buf)
   end
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

   local chadrcExists, change = pcall(require, "custom.chadrc")

   -- if chadrc exists , then merge its table into the default config's

   if chadrcExists then
      conf = vim.tbl_deep_extend("force", conf, change)
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

M.remove_default_plugins = function(plugin_table)
   local removals = require("core.utils").load_config().plugins.default_plugin_remove or {}
   local result = {}

   if vim.tbl_isempty(removals) then
      return plugin_table
   end

   for _, value in pairs(plugin_table) do
      for _, plugin in ipairs(removals) do
         if value[1] ~= plugin then
            table.insert(result, value)
         end
      end
   end

   return result
end

return M
