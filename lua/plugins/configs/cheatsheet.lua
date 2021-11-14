local present, cheatsheet = pcall(require, "cheatsheet")

if not present then
   return
end

local mappings = require("core.utils").load_config().mappings

-- add user mappings to the cheetsheet
-- improve this function to not hardcode plugin
local function add_to_cheatsheet(section, keymap, desc)
   if section == "plugins" then
      for sec, key in pairs(mappings.plugins) do
         add_to_cheatsheet(sec, key, sec)
      end

   else
      if type(keymap) == "table" then
         for sec, key in pairs(keymap) do
            if type(sec) == "number" then
               add_to_cheatsheet(section, key, desc or section)
            else
               add_to_cheatsheet(sec, key, desc or section)
            end
         end
      else
         cheatsheet.add_cheat(section, keymap, desc or "Misc")
      end
   end
end

for section, keymap in pairs(mappings) do
   add_to_cheatsheet(section, keymap)
end

require("cheatsheet").setup {

   bundled_cheatsheets = {
      enabled = { "default" },
      disabled = { "unicode", "nerd-fonts" },
   },

   bundled_plugin_cheatsheets = false,
   include_only_installed_plugins = true,
}
