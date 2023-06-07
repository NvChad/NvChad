local enable_providers = {
  "python3_provider",
  "python3",
  "lua"
}

for _, plugin in pairs(enable_providers) do
  vim.g["loaded_" .. plugin] = nil
  vim.cmd("runtime " .. plugin)
end
