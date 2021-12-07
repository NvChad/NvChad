local userconf = pcall(require, "custom")

if userconf then
   require "custom"
end

local core_modules = {
   "core.options",
   "core.autocmds",
   "core.mappings",
}

for _, module in ipairs(core_modules) do
   local ok, err = pcall(require, module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end

-- non plugin mappings
require("core.mappings").misc()
