-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
  theme = "nightfox",
  transparency = true,
}

M.plugins = {

  user = {
   ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
    },
  }
}

return M
