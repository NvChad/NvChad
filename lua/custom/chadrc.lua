-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
  theme = "doomchad",
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
    ["sbdchd/neoformat"] = {},
    ["kyazdani42/nvim-tree.lua"] = {
      cmd = { "NvimTreeToggle", "NvimTreeFocus" },
      config = function()
        require "custom.plugins.nvim-tree"
      end,
    },
  }
}
M.mappings = require "custom.mappings"
return M
