local utils = require "core.utils"

local config = utils.load_config()
local map = utils.map

local maps = config.mappings
local plugin_maps = maps.plugin

local cmd = vim.cmd

local M = {}

-- these mappings will only be called during initialization
M.misc = function()
   local function non_config_mappings()
      -- Don't copy the replaced text after pasting in visual mode
      map("v", "p", '"_dP')

      -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
      -- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
      -- empty mode is same as using :map
      -- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour
      map("", "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
      map("", "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })
      map("", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
      map("", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })

      -- use ESC to turn off search highlighting
      map("n", "<Esc>", ":noh <CR>")
       ---- jump and align in the middle
      map("n", "n", "nzzzv", opt)
      map("n", "N", "Nzzzv", opt)
      -- do J without moving the cursor
      map("n", "J", "mzJ'z", opt)
      -- add undo break points
      map("i", ",", ",<c-g>u", opt)
      map("i", ".", ".<c-g>u", opt)
      map("i", "!", "!<cg>u", opt)
      map("i", "?", "?<c-g>u", opt)
      -- draging lines up and down
      map("n", "<leader>k", ":m .-2<CR>==", opt)
      map("n", "<leader>j", ":m .+1<CR>==", opt)
      map("v", "J", ":m '>+1<CR>gv=gv", opt)
      map("v", "K", ":m '<-2<CR>gv=gv", opt)
      -- Highlight on yank
      vim.api.nvim_exec(
       [[
        augroup YankHighlight
          autocmd!
          autocmd TextYankPost * silent! lua vim.highlight.on_yank()
        augroup end
      ]],
        false
    )
   end

   local function optional_mappings()
      -- don't yank text on cut ( x )
      if not config.options.copy_cut then
         map({ "n", "v" }, "x", '"_x')
      end

      -- don't yank text on delete ( dd )
      if not config.options.copy_del then
         map({ "n", "v" }, "dd", '"_dd')
      end

      -- navigation within insert mode
      if config.options.insert_nav then
         local inav = maps.insert_nav

         map("i", inav.backward, "<Left>")
         map("i", inav.end_of_line, "<End>")
         map("i", inav.forward, "<Right>")
         map("i", inav.next_line, "<Up>")
         map("i", inav.prev_line, "<Down>")
         map("i", inav.top_of_line, "<ESC>^i")
      end

      -- check the theme toggler
      if config.ui.theme_toggler.enabled then
         map(
            "n",
            maps.theme_toggler,
            ":lua require('nvchad').toggle_theme(require('core.utils').load_config().ui.theme_toggler.fav_themes) <CR>"
         )
      end
   end

   local function required_mappings()
      map("n", maps.close_buffer, ":lua require('core.utils').close_buffer() <CR>") -- close  buffer
      map("n", maps.copy_whole_file, ":%y+ <CR>") -- copy whole file content
      map("n", maps.new_buffer, ":enew <CR>") -- new buffer
      map("n", maps.new_tab, ":tabnew <CR>") -- new tabs
      map("n", maps.line_number_toggle, ":set nu! <CR>") -- toggle numbers
      map("n", maps.save_file, ":w <CR>") -- ctrl + s to save file

      -- terminal mappings --
      local term_maps = maps.terminal
      -- get out of terminal mode
      map("t", term_maps.esc_termmode, "<C-\\><C-n>")
      -- hide a term from within terminal mode
      map("t", term_maps.esc_hide_termmode, "<C-\\><C-n> :lua require('core.utils').close_buffer() <CR>")
      -- pick a hidden term
      map("n", term_maps.pick_term, ":Telescope terms <CR>")
      -- Open terminals
      -- TODO this opens on top of an existing vert/hori term, fixme
      map("n", term_maps.new_horizontal, ":execute 15 .. 'new +terminal' | let b:term_type = 'hori' | startinsert <CR>")
      map("n", term_maps.new_vertical, ":execute 'vnew +terminal' | let b:term_type = 'vert' | startinsert <CR>")
      map("n", term_maps.new_window, ":execute 'terminal' | let b:term_type = 'wind' | startinsert <CR>")
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
      map("n", maps.update_nvchad, ":NvChadUpdate <CR>")

      -- add ChadReload command and maping
      -- cmd "silent! command! NvChadReload lua require('nvchad').reload_config()"
   end

   local function user_config_mappings()
      local custom_maps = config.custom.mappings or ""
      if type(custom_maps) ~= "table" then
         return
      end

      for _, map_table in pairs(custom_maps) do
         map(unpack(map_table))
      end
   end

   non_config_mappings()
   optional_mappings()
   required_mappings()
   user_config_mappings()
end

-- below are all plugin related mappings

M.bufferline = function()
   local m = plugin_maps.bufferline

   map("n", m.next_buffer, ":BufferLineCycleNext <CR>")
   map("n", m.prev_buffer, ":BufferLineCyclePrev <CR>")
   map("n", m.moveLeft, "<C-w>h")
   map("n", m.moveRight, "<C-w>l")
   map("n", m.moveUp, "<C-w>k")
   map("n", m.moveDown, "<C-w>j")
end

M.chadsheet = function()
   local m = plugin_maps.chadsheet

   map("n", m.default_keys, ":lua require('cheatsheet').show_cheatsheet_telescope() <CR>")
   map(
      "n",
      m.user_keys,
      ":lua require('cheatsheet').show_cheatsheet_telescope{bundled_cheatsheets = false, bundled_plugin_cheatsheets = false } <CR>"
   )
end

M.comment = function()
   local m = plugin_maps.comment.toggle
   map("n", m, ":CommentToggle <CR>")
   map("v", m, ":CommentToggle <CR>")
end

M.dashboard = function()
   local m = plugin_maps.dashboard

   map("n", m.bookmarks, ":DashboardJumpMarks <CR>")
   map("n", m.new_file, ":DashboardNewFile <CR>")
   map("n", m.open, ":Dashboard <CR>")
   map("n", m.session_load, ":SessionLoad <CR>")
   map("n", m.session_save, ":SessionSave <CR>")
end

M.nvimtree = function()
   map("n", plugin_maps.nvimtree.toggle, ":NvimTreeToggle <CR>")
   map("n", plugin_maps.nvimtree.focus, ":NvimTreeFocus <CR>")
end

M.neoformat = function()
   map("n", plugin_maps.neoformat.format, ":Neoformat <CR>")
end

M.telescope = function()
   local m = plugin_maps.telescope

   map("n", m.buffers, ":Telescope buffers <CR>")
   map("n", m.find_files, ":Telescope find_files <CR>")
   map("n", m.find_hiddenfiles, ":Telescope find_files hidden=true <CR>")
   map("n", m.git_commits, ":Telescope git_commits <CR>")
   map("n", m.git_status, ":Telescope git_status <CR>")
   map("n", m.help_tags, ":Telescope help_tags <CR>")
   map("n", m.live_grep, ":Telescope live_grep <CR>")
   map("n", m.oldfiles, ":Telescope oldfiles <CR>")
   map("n", m.themes, ":Telescope themes <CR>")
end

M.telescope_media = function()
   local m = plugin_maps.telescope_media

   map("n", m.media_files, ":Telescope media_files <CR>")
end

M.truezen = function()
   local m = plugin_maps.truezen

   map("n", m.ataraxis_mode, ":TZAtaraxis <CR>")
   map("n", m.focus_mode, ":TZFocus <CR>")
   map("n", m.minimalistic_mode, ":TZMinimalist <CR>")
end

M.vim_fugitive = function()
   local m = plugin_maps.vim_fugitive

   map("n", m.git, ":Git <CR>")
   map("n", m.git_blame, ":Git blame <CR>")
   map("n", m.diff_get_2, ":diffget //2 <CR>")
   map("n", m.diff_get_3, ":diffget //3 <CR>")
end

return M
