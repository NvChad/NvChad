-- Just an example, supposed to be placed in /lua/custom/
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- safe load plugins
local plugins_configs_ok, plugins_configs = pcall(require, "custom.plugins")
if not plugins_configs_ok then
  print(plugins_configs)
  return {}
end

M.plugins = {
  -- remove plugins
  ["NvChad/nvterm"] = false,

  -- override plugins
  ["kyazdani42/nvim-tree.lua"] = {override_options = plugins_configs.nvimtree_config},
  ["lewis6991/gitsigns.nvim"] = {override_options = plugins_configs.gitsigns_config},
  ["nvim-treesitter/nvim-treesitter"] = {override_options = plugins_configs.treesitter_config},
  ["nvim-telescope/telescope.nvim"] = {override_options = plugins_configs.telescope_config},
  ["folke/which-key.nvim"] = {override_options = plugins_configs.whichkey_config},
  -- TODO: make it separate file
  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        separator_style = "block", -- default/round/block/arrow
        overriden_modules = nil
      },
      -- lazyload it when there are 1+ buffers
      tabufline = {enabled = true, lazyload = true, overriden_modules = nil}
    }

  },
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {"lua-language-server", "css-lsp", "html-lsp", "typescript-language-server", "pyright"}
    }
  }
}
-- installing new plugins
M.plugins = vim.tbl_deep_extend("force", M.plugins, plugins_configs.additional_plugins)

-- safe load highlights
local highlights_add_ok, highlights_add = pcall(require, "custom.highlights.highlights_add")
local highlights_override_ok, highlights_override = pcall(require, "custom.highlights.highlights_override")
if not highlights_add_ok then
  print(highlights_add)
  return {}
end
if not highlights_override_ok then
  print(highlights_override)
  return {}
end

M.ui = {theme = "darker_one", hl_override = highlights_override, hl_add = highlights_add}
M.mappings = require("custom.mappings")

return M
