local plugin_settings = require("core.utils").load_config().plugins
local present, packer = pcall(require, plugin_settings.options.packer.init_file)

if not present then
   return false
end

local use = packer.use

return packer.startup(function()
   --get the default plugin table
   local plugin_table = require("plugins.plugin_table")
   --merge changes from plugins.default_plugin_override in chadrc
   plugin_table = require("core.utils").default_tbl_override(plugin_table)
   --remove plugins from plugins.default_plugin_remove in chadrc
   plugin_table = require("core.utils").default_tbl_remove(plugin_table)
   --initialize packer with the new plugin table
   for _,plugin in pairs(plugin_table) do
      use(plugin)
   end
   -- load user defined plugins
   require("core.customPlugins").run(use)
end)
