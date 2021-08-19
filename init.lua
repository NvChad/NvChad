local chad_modules = {
   "options",
   "mappings",
}

for i = 1, #chad_modules, 1 do
   if not pcall(require, chad_modules[i]) then
      error("Error loading " .. chad_modules[i] .. "\n")
   end
end

require("mappings").misc()
