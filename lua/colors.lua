local cmd = vim.cmd

cmd "syntax on"
local base16 = require "base16"

vim.g.nvchad_theme = "onedark"
base16(base16.themes["onedark"], true)

-- vim.g.nvchad_theme = "gruvbox"
-- base16(base16.themes["nvchad-softgruv"], true)

-- vim.g.nvchad_theme = "tomorrow-night"
-- base16(base16.themes["tomorrow-night"], true)

require "highlights"


