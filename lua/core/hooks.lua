local hooks, M = {}, {};
local allowed_hooks = {
  "install_plugins",
  "setup_mappings",
  "ready",
}

local function has_value (tab, val)
  for _, value in ipairs(tab) do
    if value == val then
      return true
    end
  end

  return false
end

M.add = function(name, fn)
  if not(has_value(allowed_hooks, name)) then
    error("Custom lua uses unallowed hook " .. name)
  end
  if hooks[name] == nil then
    hooks[name] = {}
  end
  table.insert(hooks[name], fn);
end

M.run = function(name, args)
  if hooks[name] == nil then
    return;
  end

  for _, hook in pairs(hooks[name]) do
    hook(args)
  end
end

return M;
