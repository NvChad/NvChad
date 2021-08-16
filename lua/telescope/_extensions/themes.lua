-- This file can be loaded as a telescope extension
local M = {}

-- Custom theme picker
-- Most of the code is copied from telescope colorscheme plugin, mostly for preview creation
M.theme_switcher = function(opts)
   local pickers, finders, previewers, actions, action_state, utils, conf
   if pcall(require, "telescope") then
      pickers = require "telescope.pickers"
      finders = require "telescope.finders"
      previewers = require "telescope.previewers"

      actions = require "telescope.actions"
      action_state = require "telescope.actions.state"
      utils = require "telescope.utils"
      conf = require("telescope.config").values
   else
      error "Cannot find telescope!"
   end

   local local_utils = require "utils"
   local reload_theme = local_utils.reload_theme

   -- get a table of available themes
   local themes = local_utils.list_themes()
   if next(themes) ~= nil then
      -- save this to use it for later to restore if theme not changed
      local current_theme = vim.g.nvchad_theme
      local new_theme = ""
      local change = false

      -- buffer number and name
      local bufnr = vim.api.nvim_get_current_buf()
      local bufname = vim.api.nvim_buf_get_name(bufnr)

      local previewer

      -- in case its not a normal buffer
      if vim.fn.buflisted(bufnr) ~= 1 then
         local deleted = false
         local function del_win(win_id)
            if win_id and vim.api.nvim_win_is_valid(win_id) then
               utils.buf_delete(vim.api.nvim_win_get_buf(win_id))
               pcall(vim.api.nvim_win_close, win_id, true)
            end
         end

         previewer = previewers.new {
            preview_fn = function(_, entry, status)
               if not deleted then
                  deleted = true
                  del_win(status.preview_win)
                  del_win(status.preview_border_win)
               end
               reload_theme(entry.value)
            end,
         }
      else
         -- show current buffer content in previewer
         previewer = previewers.new_buffer_previewer {
            get_buffer_by_name = function()
               return bufname
            end,
            define_preview = function(self, entry)
               if vim.loop.fs_stat(bufname) then
                  conf.buffer_previewer_maker(bufname, self.state.bufnr, { bufname = self.state.bufname })
               else
                  local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
                  vim.api.nvim_buf_set_lines(self.state.bufnr, 0, -1, false, lines)
               end
               reload_theme(entry.value)
            end,
         }
      end

      local picker = pickers.new {
         prompt_title = "Set NvChad color",
         finder = finders.new_table(themes),
         previewer = previewer,
         sorter = conf.generic_sorter(opts),
         attach_mappings = function()
            actions.select_default:replace(
               -- if a entry is selected, change current_theme to that
               function(prompt_bufnr)
                  local selection = action_state.get_selected_entry()
                  new_theme = selection.value
                  change = true
                  actions.close(prompt_bufnr)
               end
            )
            return true
         end,
      }

      -- rewrite picker.close_windows
      local close_windows = picker.close_windows
      picker.close_windows = function(status)
         close_windows(status)
         -- now apply the theme, if success, then ask for default theme change
         local final_theme
         if change then
            final_theme = new_theme
         else
            final_theme = current_theme
         end

         if reload_theme(final_theme) then
            if change then
               -- ask for confirmation to set as default theme
               local ans = string.lower(vim.fn.input("Set " .. new_theme .. " as default theme ? [y/N] ")) == "y"
               local_utils.clear_cmdline()
               if ans then
                  local_utils.change_theme(current_theme, final_theme)
               else
                  -- will be used in restoring nvchad theme var
                  final_theme = current_theme
               end
            end
         else
            final_theme = current_theme
         end
         -- set nvchad_theme global var
         vim.g.nvchad_theme = final_theme
      end
      -- launch the telescope picker
      picker:find()
   else
      print("No themes found in " .. vim.fn.stdpath "config" .. "/lua/themes")
   end
end

-- register theme swticher as themes to telescope
local present, telescope = pcall(require, "telescope")
if present then
   return telescope.register_extension {
      exports = {
         themes = M.theme_switcher,
      },
   }
else
   error "Cannot find telescope!"
end
