local present, nvterm = pcall(require, "nvterm")

if not present then
  return
end

require "base46.term"

local options = {
  terminals = {
    list = {},
    type_opts = {
      float = {
        relative = "editor",
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = 0.3 },
      vertical = { location = "rightbelow", split_ratio = 0.5 },
    },
  },
  behavior = {
    close_on_exit = true,
    auto_insert = true,
  },
  enable_new_mappings = true,
}

options = require("core.utils").load_override(options, "NvChad/nvterm")

nvterm.setup(options)
