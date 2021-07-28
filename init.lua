-- install package manager if not exists
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

local chad_modules = {
    "options",
    "mappings",
    "utils",
    "pluginList"
}

for i = 1, #chad_modules, 1 do
    pcall(require, chad_modules[i])
end
-- vim.cmd 'colorscheme onedark'
