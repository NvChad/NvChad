-- load all plugins
require "pluginList"
require "misc-utils"

require "top-bufferline"
require "statusline"

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff
cmd "syntax on"

local base16 = require "base16"
base16(base16.themes["onedark"], true)

require "highlights"
require("colorizer").setup()
require "mappings"
require "telescope-nvim"
require "file-icons"

-- hide line numbers , statusline in specific buffers!
vim.api.nvim_exec(
    [[
   au BufEnter term://* setlocal nonumber
   au BufEnter,BufWinEnter,WinEnter,CmdwinEnter * if bufname('%') == "NvimTree" | set laststatus=0 | else | set laststatus=2 | endif
   au BufEnter term://* set laststatus=0 
]],
    false
)
