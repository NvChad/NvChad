local M = {}
local plugins = {}

M.add = function(fn)
   table.insert(plugins, fn)
end

-- load custom plugins in packer startup function
M.run = function(args)
   for _, hook in pairs(plugins) do
      hook(args)
   end
end

return M
