---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "tokyonight",
  theme_toggle = { "tokyonight", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = true,
}

M.nvimtree = {
  git = {
      enable = true,
  },
  renderer = {
      highlight_git = true,
      icons = {
      show = {
          git = true,
          },
      },
  },
  view = {
      side = "right",
  },
  filters = {
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
