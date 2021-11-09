local M = {}

local cmd = vim.cmd
M.close_buffer = function(bufexpr, force)
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

      local chad_term, type = pcall(function()
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
            -- swtich to another buff
            -- TODO switch to next bufffer, this works too
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
   local buftype = api.nvim_buf_get_option("%", "ft")

   -- shown table from config has the highest priority
   if vim.tbl_contains(shown, buftype) then
      api.nvim_set_option("laststatus", 2)
      return
   end

   if vim.tbl_contains(hidden, buftype) then
      api.nvim_set_option("laststatus", 0)
      return
   else
      api.nvim_set_option("laststatus", 2)
   end
end

-- load config
-- 1st arg = boolean - whether to force reload
-- Modifies _G._NVCHAD_CONFIG global variable
M.load_config = function(reload)
   -- only do the stuff below one time, otherwise just return the set config
   if _G._NVCHAD_CONFIG_CONTENTS ~= nil and not (reload or false) then
      return _G._NVCHAD_CONFIG_CONTENTS
   end

   -- these are the table value which will be always prioritiezed to take user config value
   local to_replace = {
      "['mappings']['plugins']['esc_insertmode']",
      "['mappings']['terminal']['esc_termmode']",
      "['mappings']['terminal']['esc_hide_termmode']",
   }

   local default_config = "core.default_config"
   local config_name = vim.g.nvchad_user_config or "chadrc"
   local config_file = vim.fn.stdpath "config" .. "/lua/custom/" .. config_name .. ".lua"

   -- unload the modules if force reload
   if reload then
      package.loaded[default_config or false] = nil
      package.loaded[config_name or false] = nil
   end

   -- don't enclose in pcall, it better break when default config is faulty
   _G._NVCHAD_CONFIG_CONTENTS = require(default_config)

   -- user config is not required to run nvchad but a optional
   -- Make sure the config doesn't break the whole system if user config is not present or in bad state or not a table
   -- print warning texts if user config file is  present
   -- check if the user config is present
   if vim.fn.filereadable(vim.fn.glob(config_file)) == 1 then
      local present, config = pcall(require, "custom/" .. config_name)
      if present then
         -- make sure the returned value is table
         if type(config) == "table" then
            -- data = require(config_name)
            _G._NVCHAD_CONFIG_CONTENTS = require("core.utils").merge_table(
               _G._NVCHAD_CONFIG_CONTENTS,
               config,
               to_replace
            )
         else
            print("Warning: " .. config_name .. " sourced successfully but did not return a lua table.")
         end
      else
         print("Warning: " .. config_file .. " is present but sourcing failed.")
      end
   end
   return _G._NVCHAD_CONFIG_CONTENTS
end

M.map = function(mode, keys, cmd, opt)
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
   local function map_wrapper(mode, lhs, rhs, options)
      if type(lhs) == "table" then
         for _, key in ipairs(lhs) do
            map_wrapper(mode, key, rhs, options)
         end
      else
         if type(mode) == "table" then
            for _, m in ipairs(mode) do
               map_wrapper(m, lhs, rhs, options)
            end
         else
            if valid_modes[mode] and lhs and rhs then
               vim.api.nvim_set_keymap(mode, lhs, rhs, options)
            else
               mode, lhs, rhs = mode or "", lhs or "", rhs or ""
               print("Cannot set mapping [ mode = '" .. mode .. "' | key = '" .. lhs .. "' | cmd = '" .. rhs .. "' ]")
            end
         end
      end
   end

   map_wrapper(mode, keys, cmd, options)
end

-- Base code: https://gist.github.com/revolucas/184aec7998a6be5d2f61b984fac1d7f7
-- Changes over it: preserving table 1 contents and also update with table b, without duplicating
-- 1st arg - base table
-- 2nd arg - table to merge
-- 3rg arg - list of nodes as a table, if the node is found replace the from table2 to result, rather than adding the value
-- e.g: merge_table(t1, t2, { ['mappings']['plugins']['bufferline'] })
M.merge_table = function(into, from, nodes_to_replace)
   -- make sure both are table
   if type(into) ~= "table" or type(from) ~= "table" then
      return into
   end

   local stack, seen = {}, {}
   local table1, table2 = into, from

   if type(nodes_to_replace) == "table" then
      -- function that will be executed with loadstring
      local replace_fn = function(node)
         local base_fn = [[
return function(table1, table2)
   local t1, t2 = table1_node or false , table2_node or false
   if t1 and t2 then
      table1_node = table2_node
   end
   return table1
end]]

         -- replace the _node in base_fn to actual given node value
         local fn = base_fn:gsub("_node", node)
         -- return the function created from the string base_fn
         return loadstring(fn)()(table1, table2)
      end

      for _, node in ipairs(nodes_to_replace) do
         -- pcall() is a poor workaround for if "['mappings']['plugins']['esc_insertmode']" 'plugins' sub-table does not exist
         local ok, result = pcall(replace_fn, node)
         if ok then
            -- if the node is found then replace
            table1 = result
         end
      end
   end

   while true do
      for k, v in pairs(table2) do
         if type(v) == "table" and type(table1[k]) == "table" then
            table.insert(stack, { table1[k], table2[k] })
         else
            local present = seen[v] or false
            if not present then
               if type(k) == "number" then
                  -- add the value to seen table until value is found
                  -- only do when key is number we just want to append to subtables
                  -- todo: maybe improve this

                  for _, value in pairs(table1) do
                     if value == v then
                        present = true
                        break
                     end
                  end
                  seen[v] = true
                  if not present then
                     table1[#table1 + 1] = v
                  end
               else
                  table1[k] = v
               end
            end
         end
      end
      if #stack > 0 then
         local t = stack[#stack]
         table1, table2 = t[1], t[2]
         stack[#stack] = nil
      else
         break
      end
   end
   return into
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

return M
