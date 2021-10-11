local hooks, overrides, M = {}, {}, {}
local allowed_hooks = {
   "install_plugins",
   "setup_mappings",
   "ready",
}

local function has_value(tab, val)
   for _, value in ipairs(tab) do
      if value == val then
         return true
      end
   end

   return false
end

M.add = function(name, fn)
   if not (has_value(allowed_hooks, name)) then
      error("Custom lua uses unallowed hook " .. name)
   end
   if hooks[name] == nil then
      hooks[name] = {}
   end
   table.insert(hooks[name], fn)
end

M.run = function(name, args)
   if hooks[name] == nil then
      return
   end

   for _, hook in pairs(hooks[name]) do
      hook(args)
   end
end

M.createOverrides = function(module)
   local O = {}

   O.get = function(name, default)
      local current = default
      if overrides[module] and overrides[module][name] then
         if type(overrides[module][name]) == "function" then
            current = overrides[module][name]
         elseif type(overrides[module][name]) == "table" then
            for _, override in pairs(overrides[module][name]) do
               current = override(current)
            end
         end
      end
      return current
   end

   return O
end

M.override = function(module, name, overwrite)
   if overrides[module] == nil then
      overrides[module] = {}
   end
   if overrides[module][name] == nil then
      overrides[module][name] = {}
   end
   table.insert(overrides[module][name], overwrite)
end

return M
