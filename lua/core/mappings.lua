local utils = require "core.utils"

local config = utils.load_config()
local map_wrapper = utils.map

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
      map_wrapper("n", "<Esc>", ":noh <CR>")

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
      map("n", maps.misc.cheatsheet, ":lua require('nvchad.cheatsheet').show() <CR>") -- show keybinds
      map("n", maps.misc.close_buffer, ":lua require('core.utils').close_buffer() <CR>") -- close  buffer
      map("n", maps.misc.cp_whole_file, ":%y+ <CR>") -- copy whole file content
      map("n", maps.misc.new_buffer, ":enew <CR>") -- new buffer
      map("n", maps.misc.new_tab, ":tabnew <CR>") -- new tabs
      map("n", maps.misc.lineNR_toggle, ":set nu! <CR>")
      map("n", maps.misc.lineNR_rel_toggle, ":set rnu! <CR>") -- relative line numbers
      map("n", maps.misc.save_file, ":w <CR>") -- ctrl + s to save file

      -- terminal mappings --
      local term_maps = maps.terminal
      -- get out of terminal mode
      map("t", term_maps.esc_termmode, "<C-\\><C-n>")
      -- hide a term from within terminal mode
      map("t", term_maps.esc_hide_termmode, "<CMD>lua require('nvchad.terminal').hide() <CR>")
      -- pick a hidden term
      map("n", term_maps.pick_term, ":Telescope terms <CR>")
      -- Open terminals
      -- TODO this opens on top of an existing vert/hori term, fixme
      map(
         { "n", "t" },
         term_maps.new_horizontal,
         "<CMD>lua require('nvchad.terminal').new_or_toggle('horizontal', "
            .. tostring(terminal_options.window.split_height)
            .. ")<CR>"
      )
      map(
         { "n", "t" },
         term_maps.new_vertical,
         "<CMD>lua require('nvchad.terminal').new_or_toggle('vertical', "
            .. tostring(terminal_options.window.vsplit_width)
            .. ")<CR>"
      )
      map(
         { "n", "t" },
         term_maps.new_float,
         "<CMD>lua require('nvchad.terminal').new_or_toggle('float')<CR>"
      )

      -- spawns terminals
      map(
         "n",
         term_maps.spawn_horizontal,
         ":execute 15 .. 'new +terminal' | let b:term_type = 'hori' | startinsert <CR>"
      )
      map("n", term_maps.spawn_vertical, ":execute 'vnew +terminal' | let b:term_type = 'vert' | startinsert <CR>")
      map("n", term_maps.spawn_window, ":execute 'terminal' | let b:term_type = 'wind' | startinsert <CR>")

      -- terminal mappings end --

      -- Add Packer commands because we are not loading it at startup
      cmd "silent! command PackerClean lua require 'plugins' require('packer').clean()"
      cmd "silent! command PackerCompile lua require 'plugins' require('packer').compile()"
      cmd "silent! command PackerInstall lua require 'plugins' require('packer').install()"
      cmd "silent! command PackerStatus lua require 'plugins' require('packer').status()"
      cmd "silent! command PackerSync lua require 'plugins' require('packer').sync()"
      cmd "silent! command PackerUpdate lua require 'plugins' require('packer').update()"

      -- add NvChadUpdate command and mapping
      cmd "silent! command! NvChadUpdate lua require('nvchad').update_nvchad()"
      map("n", maps.misc.update_nvchad, ":NvChadUpdate <CR>")
   end

   non_config_mappings()
   optional_mappings()
   required_mappings()
end

-- below are all plugin related mappings

M.bufferline = function()
   local m = plugin_maps.bufferline

   map("n", m.next_buffer, ":BufferLineCycleNext <CR>")
   map("n", m.prev_buffer, ":BufferLineCyclePrev <CR>")
end

M.comment = function()
   local m = plugin_maps.comment.toggle
   map("n", m, ":lua require('Comment.api').toggle_current_linewise()<CR>")
   map("v", m, ":lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>")
end

M.lspconfig = function()
   local m = plugin_maps.lspconfig

   -- See `:help vim.lsp.*` for documentation on any of the below functions
   map("n", m.declaration, "<cmd>lua vim.lsp.buf.declaration()<CR>")
   map("n", m.definition, "<cmd>lua vim.lsp.buf.definition()<CR>")
   map("n", m.hover, "<cmd>lua vim.lsp.buf.hover()<CR>")
   map("n", m.implementation, "<cmd>lua vim.lsp.buf.implementation()<CR>")
   map("n", m.signature_help, "<cmd>lua vim.lsp.buf.signature_help()<CR>")
   map("n", m.add_workspace_folder, "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>")
   map("n", m.remove_workspace_folder, "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>")
   map("n", m.list_workspace_folders, "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>")
   map("n", m.type_definition, "<cmd>lua vim.lsp.buf.type_definition()<CR>")
   map("n", m.rename, "<cmd>lua vim.lsp.buf.rename()<CR>")
   map("n", m.code_action, "<cmd>lua vim.lsp.buf.code_action()<CR>")
   map("n", m.references, "<cmd>lua vim.lsp.buf.references()<CR>")
   map("n", m.float_diagnostics, "<cmd>lua vim.diagnostic.open_float()<CR>")
   map("n", m.goto_prev, "<cmd>lua vim.diagnostic.goto_prev()<CR>")
   map("n", m.goto_next, "<cmd>lua vim.diagnostic.goto_next()<CR>")
   map("n", m.set_loclist, "<cmd>lua vim.diagnostic.setloclist()<CR>")
   map("n", m.formatting, "<cmd>lua vim.lsp.buf.formatting()<CR>")
end

M.nvimtree = function()
   map("n", plugin_maps.nvimtree.toggle, ":NvimTreeToggle <CR>")
   map("n", plugin_maps.nvimtree.focus, ":NvimTreeFocus <CR>")
end

M.telescope = function()
   local m = plugin_maps.telescope

   map("n", m.buffers, ":Telescope buffers <CR>")
   map("n", m.find_files, ":Telescope find_files <CR>")
   map("n", m.find_hiddenfiles, ":Telescope find_files follow=true no_ignore=true hidden=true <CR>")
   map("n", m.git_commits, ":Telescope git_commits <CR>")
   map("n", m.git_status, ":Telescope git_status <CR>")
   map("n", m.help_tags, ":Telescope help_tags <CR>")
   map("n", m.live_grep, ":Telescope live_grep <CR>")
   map("n", m.oldfiles, ":Telescope oldfiles <CR>")
   map("n", m.themes, ":Telescope themes <CR>")
end

return M
