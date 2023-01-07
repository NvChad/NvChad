require "core"
require "core.options"
require("core.utils").load_mappings()

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

-- bootstrap lazy.nvim!
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

vim.opt.rtp:prepend(lazypath)
require "plugins"

-- load compiled base46 themes
loadfile(vim.g.base46_cache .. "bg")()
loadfile(vim.g.base46_cache .. "defaults")()
loadfile(vim.g.base46_cache .. "statusline")()
