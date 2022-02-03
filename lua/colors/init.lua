local M = {}

-- if theme given, load given theme if given, otherwise nvchad_theme
M.init = function(theme)
   if not theme then
      theme = require("core.utils").load_config().ui.theme
   end

   -- set the global theme, used at various places like theme switcher, highlights
   vim.g.nvchad_theme = theme

   local present, base16 = pcall(require, "base16")

   if present then
      -- first load the base16 theme
      base16(base16.themes(theme), true)

      -- unload to force reload
      package.loaded["colors.highlights" or false] = nil
      -- then load the highlights
      require "colors.highlights"
   end
end

-- returns a table of colors for given or current theme
M.get = function(theme)
   if not theme then
      theme = vim.g.nvchad_theme
   end
   local path = "lua/hl_themes/" .. theme .. ".lua"
   local files = vim.api.nvim_get_runtime_file(path, true)
   local color_table
   if #files == 0 then
      error("lua/hl_themes/" .. theme .. ".lua" .. " not found")
   elseif #files == 1 then
      color_table = dofile(files[1])
   else
      local nvim_base_pattern = "nvim-base16.lua/lua/hl_themes"
      local valid_file = false
      for _, file in ipairs(files) do
         if not file:find(nvim_base_pattern) then
            color_table = dofile(file)
            valid_file = true
         end
      end
      if not valid_file then
         -- multiple files but in startup repo shouldn't happen so just use first one
         color_table = dofile(files[1])
      end
   end
   return color_table
end

return M
