-- load all plugins
require "pluginList"
require "misc-utils"

require "top-bufferline"
require("colorizer").setup()

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff
cmd "syntax on"

g.nvchad_theme = "gruvbox"
local base16 = require "base16"
base16(base16.themes["nvchad-softgruv"], true)

require "highlights"
require "mappings"
require "file-icons"
require "statusline"

-- hide line numbers , statusline in specific buffers!
vim.api.nvim_exec(
    [[
   au BufEnter term://* setlocal nonumber
   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
   au BufEnter term://* set laststatus=0 
]],
    false
)
