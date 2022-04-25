local utils = require "core.utils"

local config = utils.load_config()
local map_wrapper = utils.map

local user_cmd = vim.api.nvim_create_user_command
local maps = config.mappings
local plugin_maps = maps.plugins
local nvChad_options = config.options.nvChad
local terminal_options = config.options.terminal

local cmd = vim.cmd

-- This is a wrapper function made to disable a plugin mapping from chadrc
-- If keys are nil, false or empty string, then the mapping will be not applied
-- Useful when one wants to use that keymap for any other purpose
local map = function(...)
   local keys = select(2, ...)
   if not keys or keys == "" then
      return
   end
   map_wrapper(...)
end

local M = {}

-- these mappings will only be called during initialization
M.misc = function()
   local function non_config_mappings()
      -- Don't copy the replaced text after pasting in visual mode
      map_wrapper("v", "p", "p:let @+=@0<CR>")

      -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
      -- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
      -- empty mode is same as using :map
      -- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour
      map_wrapper({ "n", "x", "o" }, "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
      map_wrapper({ "n", "x", "o" }, "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })
      map_wrapper("", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
      map_wrapper("", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })

      -- use ESC to turn off search highlighting
      map_wrapper("n", "<Esc>", "<cmd>:noh <CR>")

      -- center cursor when moving (goto_definition)
   end

   local function optional_mappings()
      -- don't yank text on cut ( x )
      if not nvChad_options.copy_cut then
         map_wrapper({ "n", "v" }, "x", '"_x')
      end

      -- don't yank text on delete ( dd )
      if not nvChad_options.copy_del then
         map_wrapper({ "n", "v" }, "d", '"_d')
      end

      -- navigation within insert mode
      if nvChad_options.insert_nav then
         local inav = maps.insert_nav

         map("i", inav.backward, "<Left>")
         map("i", inav.end_of_line, "<End>")
         map("i", inav.forward, "<Right>")
         map("i", inav.next_line, "<Down>")
         map("i", inav.prev_line, "<Up>")
         map("i", inav.beginning_of_line, "<ESC>^i")
      end

      -- easier navigation between windows
      if nvChad_options.window_nav then
         local wnav = maps.window_nav

         map("n", wnav.moveLeft, "<C-w>h")
         map("n", wnav.moveRight, "<C-w>l")
         map("n", wnav.moveUp, "<C-w>k")
         map("n", wnav.moveDown, "<C-w>j")
      end
   end

   local function required_mappings()
      map("n", maps.misc.cheatsheet, function()
         require("nvchad.cheatsheet").show()
      end) -- show keybinds
      map("n", maps.misc.close_buffer, function()
         require("core.utils").close_buffer()
      end) -- close  buffer
      map("n", maps.misc.cp_whole_file, "<cmd>:%y+ <CR>") -- copy whole file content
      map("n", maps.misc.new_buffer, "<cmd>:enew <CR>") -- new buffer
      map("n", maps.misc.new_tab, "<cmd>:tabnew <CR>") -- new tabs
      map("n", maps.misc.lineNR_toggle, "<cmd>:set nu! <CR>")
      map("n", maps.misc.lineNR_rel_toggle, "<cmd>:set rnu! <CR>") -- relative line numbers
      map("n", maps.misc.save_file, "<cmd>:w <CR>") -- ctrl + s to save file

      -- terminal mappings --
      local term_maps = maps.terminal
      -- get out of terminal mode
      map("t", term_maps.esc_termmode, "<C-\\><C-n>")
      -- hide a term from within terminal mode
      map("t", term_maps.esc_hide_termmode, function()
         require("nvchad.terminal").hide()
      end)
      -- pick a hidden term
      map("n", term_maps.pick_term, "<cmd>:Telescope terms <CR>")
      -- Open terminals
      -- TODO this opens on top of an existing vert/hori term, fixme
      map({ "n", "t" }, term_maps.new_horizontal, function()
         require("nvchad.terminal").new_or_toggle("horizontal", terminal_options.window.split_height)
      end)
      map({ "n", "t" }, term_maps.new_vertical, function()
         require("nvchad.terminal").new_or_toggle("vertical", terminal_options.window.vsplit_width)
      end)
      map({ "n", "t" }, term_maps.new_float, function()
         require("nvchad.terminal").new_or_toggle "float"
      end)

      -- spawns terminals
      map(
         "n",
         term_maps.spawn_horizontal,
         "<cmd>:execute 15 .. 'new +terminal' | let b:term_type = 'hori' | startinsert <CR>"
      )
      map("n", term_maps.spawn_vertical, "<cmd>:execute 'vnew +terminal' | let b:term_type = 'vert' | startinsert <CR>")
      map("n", term_maps.spawn_window, "<cmd>:execute 'terminal' | let b:term_type = 'wind' | startinsert <CR>")

      -- terminal mappings end --

      -- Add Packer commands because we are not loading it at startup
      local packer_cmd = function(callback)
        return function()
          require "plugins"
          require("packer")[callback]()
        end
      end
      user_cmd("PackerClean", packer_cmd("clean"), {})
      user_cmd("PackerCompile", packer_cmd("compile"), {})
      user_cmd("PackerInstall", packer_cmd("install"), {})
      user_cmd("PackerStatus", packer_cmd("status"), {})
      user_cmd("PackerSync", packer_cmd("sync"), {})
      user_cmd("PackerUpdate", packer_cmd("update"), {})

      -- add NvChadUpdate command and mapping
      cmd "silent! command! NvChadUpdate lua require('nvchad').update_nvchad()"
      map("n", maps.misc.update_nvchad, "<cmd>:NvChadUpdate <CR>")
   end

   non_config_mappings()
   optional_mappings()
   required_mappings()
end

-- below are all plugin related mappings

M.bufferline = function()
   local m = plugin_maps.bufferline

   map("n", m.next_buffer, "<cmd>:BufferLineCycleNext <CR>")
   map("n", m.prev_buffer, "<cmd>:BufferLineCyclePrev <CR>")
end

M.comment = function()
   local m = plugin_maps.comment.toggle
   map("n", m, ":lua require('Comment.api').toggle_current_linewise()")
   map('v', m, "<ESC><CMD>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>")
end

M.lspconfig = function()
  local buf = vim.lsp.buf
  local diagnostic = vim.diagnostic
   local m = plugin_maps.lspconfig
   -- See `:help vim.lsp.*` for documentation on any of the below functions
   map("n", m.declaration, function() buf.declaration() end)
   map("n", m.definition, function() buf.definition() end)
   map("n", m.hover, function() buf.hover() end)
   map("n", m.implementation, function() buf.implementation() end)
   map("n", m.signature_help, function() buf.signature_help() end)
   map("n", m.type_definition, function() buf.type_definition() end)
   map("n", m.rename, function() buf.rename() end)
   map("n", m.code_action, function() buf.code_action() end)
   map("n", m.references, function() buf.references() end)
   map("n", m.float_diagnostics, function() diagnostic.open_float() end)
   map("n", m.goto_prev, function() diagnostic.goto_prev() end)
   map("n", m.goto_next, function() diagnostic.goto_next() end)
   map("n", m.set_loclist, function() diagnostic.setloclist() end)
   map("n", m.formatting, function() buf.formatting() end)
   map("n", m.add_workspace_folder, function() buf.add_workspace_folder() end)
   map("n", m.remove_workspace_folder, function() buf.remove_workspace_folder() end)
   map("n", m.list_workspace_folders, function()
      print(vim.inspect(buf.list_workspace_folders()))
   end)
end

M.nvimtree = function()
   map("n", plugin_maps.nvimtree.toggle, "<cmd>:NvimTreeToggle <CR>")
   map("n", plugin_maps.nvimtree.focus, "<cmd>:NvimTreeFocus <CR>")
end

M.telescope = function()
   local m = plugin_maps.telescope

   map("n", m.buffers, "<cmd>:Telescope buffers <CR>")
   map("n", m.find_files, "<cmd>:Telescope find_files <CR>")
   map("n", m.find_hiddenfiles, "<cmd>:Telescope find_files follow=true no_ignore=true hidden=true <CR>")
   map("n", m.git_commits, "<cmd>:Telescope git_commits <CR>")
   map("n", m.git_status, "<cmd>:Telescope git_status <CR>")
   map("n", m.help_tags, "<cmd>:Telescope help_tags <CR>")
   map("n", m.live_grep, "<cmd>:Telescope live_grep <CR>")
   map("n", m.oldfiles, "<cmd>:Telescope oldfiles <CR>")
   map("n", m.themes, "<cmd>:Telescope themes <CR>")
end

return M
