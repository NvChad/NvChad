local config = require("core.utils").load_config()
local maps = config.mappings
local plugin_maps = maps.plugin
local cmd = vim.cmd

local function map(mode, lhs, rhs, opts)
   local options = { noremap = true, silent = true }
   if opts then
      options = vim.tbl_extend("force", options, opts)
   end

   -- if list of keys provided then run set for all of them
   if type(lhs) == "table" then
      for _, key in ipairs(lhs) do
         vim.api.nvim_set_keymap(mode, key, rhs, options)
      end
   else
      vim.api.nvim_set_keymap(mode, lhs, rhs, options)
   end
end

local opt, M = {}, {}

-- these mappings will only be called during initialization
M.misc = function()
   local function non_config_mappings()
      -- dont copy any deleted text , this is disabled by default so uncomment the below mappings if you want them
      -- map("n", "dd", [=[ "_dd ]=], opt)
      -- map("v", "dd", [=[ "_dd ]=], opt)
      -- map("v", "x", [=[ "_x ]=], opt)
      -- todo: this should be configurable via chadrc

      -- Don't copy the replaced text after pasting in visual mode
      map("v", "p", '"_dP', opt)

      -- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
      -- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
      -- empty mode is same as using :map
      map("", "j", 'v:count ? "j" : "gj"', { expr = true })
      map("", "k", 'v:count ? "k" : "gk"', { expr = true })
      map("", "<Down>", 'v:count ? "j" : "gj"', { expr = true })
      map("", "<Up>", 'v:count ? "k" : "gk"', { expr = true })

      -- use ESC to turn off search highlighting
      map("n", "<Esc>", ":noh <CR>", opt)
   end

   local function optional_mappings()
      -- navigation within insert mode
      if config.options.insert_nav then
         local inav = maps.insert_nav

         map("i", inav.backward, "<Left>", opt)
         map("i", inav.end_of_line, "<End>", opt)
         map("i", inav.forward, "<Right>", opt)
         map("i", inav.next_line, "<Up>", opt)
         map("i", inav.prev_line, "<Down>", opt)
         map("i", inav.top_of_line, "<ESC>^i", opt)
      end

      -- check the theme toggler
      if config.ui.theme_toggler then
         map(
            "n",
            maps.theme_toggler,
            ":lua require('nvchad').toggle_theme(require('core.utils').load_config().ui.theme_toggler.fav_themes) <CR>",
            opt
         )
      end
   end

   local function required_mappings()
      map("n", maps.close_buffer, ":lua require('core.utils').close_buffer() <CR>", opt) -- close  buffer
      map("n", maps.copy_whole_file, ":%y+ <CR>", opt) -- copy whole file content
      map("n", maps.new_buffer, ":enew <CR>", opt) -- new buffer
      map("n", maps.new_tab, ":tabnew <CR>", opt) -- new tabs
      map("n", maps.line_number_toggle, ":set nu! <CR>", opt) -- toggle numbers
      map("n", maps.save_file, ":w <CR>", opt) -- ctrl + s to save file

      -- terminal mappings --
      local term_maps = maps.terminal
      -- get out of terminal mode
      map("t", term_maps.esc_termmode, "<C-\\><C-n>", opt)
      -- hide a term from within terminal mode
      map("t", term_maps.esc_hide_termmode, "<C-\\><C-n> :lua require('core.utils').close_buffer() <CR>", opt)
      -- pick a hidden term
      map("n", term_maps.pick_term, ":Telescope terms <CR>", opt)
      -- Open terminals
      -- TODO this opens on top of an existing vert/hori term, fixme
      map(
         "n",
         term_maps.new_horizontal,
         ":execute 15 .. 'new +terminal' | let b:term_type = 'hori' | startinsert <CR>",
         opt
      )
      map("n", term_maps.new_vertical, ":execute 'vnew +terminal' | let b:term_type = 'vert' | startinsert <CR>", opt)
      map("n", term_maps.new_window, ":execute 'terminal' | let b:term_type = 'wind' | startinsert <CR>", opt)
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
      map("n", maps.update_nvchad, ":NvChadUpdate <CR>", opt)
   end

   non_config_mappings()
   optional_mappings()
   required_mappings()
end

-- below are all plugin related mappinsg

M.better_escape = function()
   vim.g.better_escape_shortcut = plugin_maps.better_escape.esc_insertmode or { "" }
end

M.bufferline = function()
   local m = plugin_maps.bufferline

   map("n", m.next_buffer, ":BufferLineCycleNext <CR>", opt)
   map("n", m.prev_buffer, ":BufferLineCyclePrev <CR>", opt)
end

M.chadsheet = function()
   local m = plugin_maps.chadsheet

   map("n", m.default_keys, ":lua require('cheatsheet').show_cheatsheet_telescope() <CR>", opt)
   map(
      "n",
      m.user_keys,
      ":lua require('cheatsheet').show_cheatsheet_telescope{bundled_cheatsheets = false, bundled_plugin_cheatsheets = false } <CR>",
      opt
   )
end

M.comment = function()
   local m = plugin_maps.comment.toggle
   map("n", m, ":CommentToggle <CR>", opt)
   map("v", m, ":CommentToggle <CR>", opt)
end

M.dashboard = function()
   local m = plugin_maps.dashboard

   map("n", m.bookmarks, ":DashboardJumpMarks <CR>", opt)
   map("n", m.new_file, ":DashboardNewFile <CR>", opt)
   map("n", m.open, ":Dashboard <CR>", opt)
   map("n", m.session_load, ":SessionLoad <CR>", opt)
   map("n", m.session_save, ":SessionSave <CR>", opt)
end

M.nvimtree = function()
   map("n", plugin_maps.nvimtree.toggle, ":NvimTreeToggle <CR>", opt)
   map("n", plugin_maps.nvimtree.focus, ":NvimTreeFocus <CR>", opt)
end

M.neoformat = function()
   map("n", plugin_maps.neoformat.format, ":Neoformat <CR>", opt)
end

M.telescope = function()
   local m = plugin_maps.telescope

   map("n", m.buffers, ":Telescope buffers <CR>", opt)
   map("n", m.find_files, ":Telescope find_files <CR>", opt)
   map("n", m.find_hiddenfiles, ":Telescope find_files hidden=true <CR>", opt)
   map("n", m.git_commits, ":Telescope git_commits <CR>", opt)
   map("n", m.git_status, ":Telescope git_status <CR>", opt)
   map("n", m.help_tags, ":Telescope help_tags <CR>", opt)
   map("n", m.live_grep, ":Telescope live_grep <CR>", opt)
   map("n", m.oldfiles, ":Telescope oldfiles <CR>", opt)
   map("n", m.themes, ":Telescope themes <CR>", opt)
end

M.telescope_media = function()
   local m = plugin_maps.telescope_media

   map("n", m.media_files, ":Telescope media_files <CR>", opt)
end

M.truezen = function()
   local m = plugin_maps.truezen

   map("n", m.ataraxis_mode, ":TZAtaraxis <CR>", opt)
   map("n", m.focus_mode, ":TZFocus <CR>", opt)
   map("n", m.minimalistic_mode, ":TZMinimalist <CR>", opt)
end

M.vim_fugitive = function()
   local m = plugin_maps.vim_fugitive

   map("n", m.git, ":Git <CR>", opt)
   map("n", m.git_blame, ":Git blame <CR>", opt)
   map("n", m.diff_get_2, ":diffget //2 <CR>", opt)
   map("n", m.diff_get_3, ":diffget //3 <CR>", opt)
end

return M
