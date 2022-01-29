local plugin_settings = require("core.utils").load_config().plugins
local present, packer = pcall(require, plugin_settings.options.packer.init_file)

if not present then
   return false
end

local use = packer.use

return packer.startup(function()
   for _,plugin in pairs(plugintable) do
      use(plugin)
   end
   -- load user defined plugins
   require("core.customPlugins").run(use)
end)
