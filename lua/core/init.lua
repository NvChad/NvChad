local core_modules = {
   "core.custom",
   "core.options",
   "core.autocmds",
   "core.mappings",
}

local hooks = require "core.hooks"

for _, module in ipairs(core_modules) do
   local ok, err = pcall(require, module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end

-- set all the non plugin mappings
require("core.mappings").misc()

hooks.run "ready"
