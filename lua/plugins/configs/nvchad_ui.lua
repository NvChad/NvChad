local present, _ = pcall(require, "nvchad_ui")

if not present then
  return
end

local options = {

  statusline = {
    separator_style = "default", -- default/round/block/arrow
    overriden_modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    overriden_modules = nil,
  },
}

options = require("core.utils").load_override(options, "NvChad/ui")

require "nvchad_ui.tabufline.lazyload"(options.tabufline)

-- ignore this as it might scare you XD
return {
  statusline = function()
    return require("nvchad_ui.statusline").setup(options)
  end,

  tabufline = function()
    return require("nvchad_ui.tabufline").setup(options)
  end,

  load_ui_plugins = function()
    vim.opt.statusline = "%!v:lua.require('plugins.configs.nvchad_ui').statusline()"
    vim.opt.tabline = "%!v:lua.require('plugins.configs.nvchad_ui').tabufline()"
  end,
}
