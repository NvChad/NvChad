local function isModuleAvailable(name)
   if package.loaded[name] then
      return true
   else
      for _, searcher in ipairs(package.searchers or package.loaders) do
         local loader = searcher(name)
         if type(loader) == "function" then
            package.preload[name] = loader
            return true
         end
      end
      return false
   end
end

local loadIfExists = function(module)
   if isModuleAvailable(module) then
      require(module)
   end
end

loadIfExists "custom"
