local M = {}

-- 1st arg as current theme, 2nd as new theme
M.change_theme = function(current_theme, new_theme)
   if current_theme == nil or new_theme == nil then
      print "Error: Provide current and new theme name"
      return false
   end
   if current_theme == new_theme then
      return
   end

   local file = vim.fn.stdpath "config" .. "/lua/chadrc.lua"
   -- store in data variable
   local data = assert(M.file("r", file))
   -- escape characters which can be parsed as magic chars
   current_theme = current_theme:gsub("%p", "%%%0")
   new_theme = new_theme:gsub("%p", "%%%0")
   local find = "theme = .?" .. current_theme .. ".?"
   local replace = 'theme = "' .. new_theme .. '"'
   local content = string.gsub(data, find, replace)
   -- see if the find string exists in file
   if content == data then
      print("Error: Cannot change default theme with " .. new_theme .. ", edit " .. file .. " manually")
      return false
   else
      assert(M.file("w", file, content))
   end
end

M.clear_cmdline = function()
   vim.defer_fn(function()
      vim.cmd "echo"
   end, 0)
end

M.close_buffer = function(bufexpr, force)
   -- This is a modification of a NeoVim plugin from
   -- Author: ojroques - Olivier Roques 
   -- Src: https://github.com/ojroques/nvim-bufdel
   -- (Author has okayed copy-paste)

   -- Options
   local opts = {
      next = 'cycle',  -- how to retrieve the next buffer
      quit = false,     -- exit when last buffer is deleted
      --TODO make this a chadrc flag/option
   }

   -- ----------------
   -- Helper functions
   -- ----------------
   
   -- Switch to buffer 'buf' on each window from list 'windows'
   local function switch_buffer(windows, buf)
      local cur_win = vim.fn.winnr()
      for _, winid in ipairs(windows) do
         vim.cmd(string.format('%d wincmd w', vim.fn.win_id2win(winid)))
         vim.cmd(string.format('buffer %d', buf))
      end
      vim.cmd(string.format('%d wincmd w', cur_win))  -- return to original window
   end
   
   -- Select the first buffer with a number greater than given buffer
   local function get_next_buf(buf)
      local next = vim.fn.bufnr('#')
      if opts.next == 'alternate' and vim.fn.buflisted(next) == 1 then
         return next
      end
      for i = 0, vim.fn.bufnr('$') - 1 do
         next = (buf + i) % vim.fn.bufnr('$') + 1  -- will loop back to 1
         if vim.fn.buflisted(next) == 1 then
            return next
         end
      end
   end

   -- ----------------
   -- End helper functions
   -- ----------------
   
   local buf = vim.fn.bufnr()
   if vim.fn.buflisted(buf) == 0 then  -- exit if buffer number is invalid
      return
   end
   
   if #vim.fn.getbufinfo({buflisted = 1}) < 2 then
      if opts.quit then
         -- exit when there is only one buffer left
         if force then
            vim.cmd('qall!')
         else
            vim.cmd('confirm qall')
         end
         return
      end
      
      local chad_term, type = pcall(function()
         return vim.api.nvim_buf_get_var(buf, "term_type")
         end)
         
      if chad_term then
         -- Must be a window type
         vim.cmd(string.format('setlocal nobl', buf))
         vim.cmd('enew')
         return
      end
      -- don't exit and create a new empty buffer
      vim.cmd('enew')
      vim.cmd('bp')
   end
   
   local next_buf = get_next_buf(buf)
   local windows = vim.fn.getbufinfo(buf)[1].windows
   
   -- force deletion of terminal buffers to avoid the prompt
   if force or vim.fn.getbufvar(buf, '&buftype') == 'terminal' then
      local chad_term, type = pcall(function()
         return vim.api.nvim_buf_get_var(buf, "term_type")
         end)
         
      -- TODO this scope is error prone, make resilient
      if chad_term then
         if type == "wind" then
            -- hide from bufferline
            vim.cmd(string.format('%d bufdo setlocal nobl', buf))
            -- swtich to another buff
            -- TODO switch to next bufffer, this works too
            vim.cmd('BufferLineCycleNext')
         else
            local cur_win = vim.fn.winnr()
            -- we can close this window
            vim.cmd(string.format('%d wincmd c', cur_win))
            return
         end
      else
         switch_buffer(windows, next_buf)
         vim.cmd(string.format('bd! %d', buf))
      end
   else
      switch_buffer(windows, next_buf)
      vim.cmd(string.format('silent! confirm bd %d', buf))
   end
   -- revert buffer switches if user has canceled deletion
   if vim.fn.buflisted(buf) == 1 then
      switch_buffer(windows, buf)
   end
end

-- 1st arg - r or w
-- 2nd arg - file path
-- 3rd arg - content if 1st arg is w
-- return file data on read, nothing on write
M.file = function(mode, filepath, content)
   local data
   local fd = assert(vim.loop.fs_open(filepath, mode, 438))
   local stat = assert(vim.loop.fs_fstat(fd))
   if stat.type ~= "file" then
      data = false
   else
      if mode == "r" then
         data = assert(vim.loop.fs_read(fd, stat.size, 0))
      else
         assert(vim.loop.fs_write(fd, content, 0))
         data = true
      end
   end
   assert(vim.loop.fs_close(fd))
   return data
end

-- return a table of available themes
M.list_themes = function(return_type)
   local themes = {}
   -- folder where theme files are stored
   local themes_folder = vim.fn.stdpath "config" .. "/lua/themes"
   -- list all the contents of the folder and filter out files with .lua extension, then append to themes table
   local fd = vim.loop.fs_scandir(themes_folder)
   if fd then
      while true do
         local name, typ = vim.loop.fs_scandir_next(fd)
         if name == nil then
            break
         end
         if typ ~= "directory" and string.find(name, ".lua") then
            -- return the table values as keys if specified
            if return_type == "keys_as_value" then
               themes[vim.fn.fnamemodify(name, ":r")] = true
            else
               table.insert(themes, vim.fn.fnamemodify(name, ":r"))
            end
         end
      end
   end
   return themes
end

-- reload a plugin ( will try to load even if not loaded)
-- can take a string or list ( table )
-- return true or false
M.reload_plugin = function(plugins)
   local status = true
   local function _reload_plugin(plugin)
      local loaded = package.loaded[plugin]
      if loaded then
         package.loaded[plugin] = nil
      end
      if not pcall(require, plugin) then
         print("Error: Cannot load " .. plugin .. " plugin!")
         status = false
      end
   end

   if type(plugins) == "string" then
      _reload_plugin(plugins)
   elseif type(plugins) == "table" then
      for _, plugin in ipairs(plugins) do
         _reload_plugin(plugin)
      end
   end
   return status
end

-- reload themes without restarting vim
-- if no theme name given then reload the current theme
M.reload_theme = function(theme_name)
   local reload_plugin = require("utils").reload_plugin

   -- if theme name is empty or nil, then reload the current theme
   if theme_name == nil or theme_name == "" then
      theme_name = vim.g.nvchad_theme
   end

   if not pcall(require, "themes/" .. theme_name) then
      print("No such theme ( " .. theme_name .. " )")
      return false
   end

   vim.g.nvchad_theme = theme_name

   -- reload the base16 theme
   local ok, base16 = pcall(require, "base16")
   if not ok then
      print "Error: Cannot load base16 plugin!"
      return false
   end
   base16(base16.themes(theme_name), true)

   if
      not reload_plugin {
         "highlights",
         "plugins.bufferline",
         "galaxyline",
         "plugins.statusline",
      }
   then
      print "Error: Not able to reload all plugins."
      return false
   end

   -- yes, this is very hacky, but due to new_async in
   -- https://github.com/glepnir/galaxyline.nvim/blob/main/lua/galaxyline/provider.lua#L5-L36
   -- it doesn't work properly and some statusline stuff dissapears
   local vcs = require "galaxyline.provider_vcs"
   local fileinfo = require "galaxyline.provider_fileinfo"
   local buffer = require "galaxyline.provider_buffer"
   local extension = require "galaxyline.provider_extensions"
   local whitespace = require "galaxyline.provider_whitespace"
   local lspclient = require "galaxyline.provider_lsp"
   _G.galaxyline_providers = {
      BufferIcon = buffer.get_buffer_type_icon,
      BufferNumber = buffer.get_buffer_number,
      FileTypeName = buffer.get_buffer_filetype,
      GitBranch = vcs.get_git_branch,
      DiffAdd = vcs.diff_add,
      DiffModified = vcs.diff_modified,
      DiffRemove = vcs.diff_remove,
      LineColumn = fileinfo.line_column,
      FileFormat = fileinfo.get_file_format,
      FileEncode = fileinfo.get_file_encode,
      FileSize = fileinfo.get_file_size,
      FileIcon = fileinfo.get_file_icon,
      FileName = fileinfo.get_current_file_name,
      SFileName = fileinfo.filename_in_special_buffer,
      LinePercent = fileinfo.current_line_percent,
      ScrollBar = extension.scrollbar_instance,
      VistaPlugin = extension.vista_nearest,
      WhiteSpace = whitespace.get_item,
      GetLspClient = lspclient.get_lsp_client,
   }
   local diagnostic = require "galaxyline.provider_diagnostic"
   _G.galaxyline_providers.DiagnosticError = diagnostic.get_diagnostic_error
   _G.galaxyline_providers.DiagnosticWarn = diagnostic.get_diagnostic_warn
   _G.galaxyline_providers.DiagnosticHint = diagnostic.get_diagnostic_hint
   _G.galaxyline_providers.DiagnosticInfo = diagnostic.get_diagnostic_info

   return true
end

-- toggle between 2 themes
-- argument should be a table with 2 theme names
M.toggle_theme = function(themes)
   local current_theme = vim.g.current_nvchad_theme or vim.g.nvchad_theme
   for _, name in ipairs(themes) do
      if name ~= current_theme then
         if require("utils").reload_theme(name) then
            -- open a buffer and close it to reload the statusline
            vim.cmd "new|bwipeout"
            vim.g.current_nvchad_theme = name
            if M.change_theme(vim.g.nvchad_theme, name) then
               vim.g.nvchad_theme = name
            end
         end
      end
   end
end

return M
