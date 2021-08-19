local present, chadsheet = pcall(require, "cheatsheet")

if not present then
   return
end

local mappings = require("utils").load_config().mappings

-- add user mappings to the cheetsheet
for section, data in pairs(mappings) do
   for description, keymap in pairs(data) do
      chadsheet.add_cheat(description, keymap, section)
   end
end

require("cheatsheet").setup {

   bundled_cheatsheets = {
      enabled = { "default" },
      disabled = { "unicode", "nerd-fonts" },
   },

   bundled_plugin_cheatsheets = false,
   include_only_installed_plugins = true,
}
