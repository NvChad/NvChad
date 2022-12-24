vim.defer_fn(function()
  pcall(require, "impatient")
end, 0)

require "core"
require "core.options"

pcall(function()
  loadfile(vim.g.base46_cache .. "bg")()
end)

-- setup packer + plugins
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  require("core.bootstrap").packer(install_path)
end

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()
