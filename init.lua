-- load plugins
require('pluginsList.lua')
require('web-devicons.lua')

require('utils.lua')
require('nvimTree.lua')
require('bufferline.lua')
require('statusline.lua')

require('gitsigns.lua')

require'colorizer'.setup()

local cmd = vim.cmd
local g = vim.g
local indent = 2

cmd 'colorscheme base16-onedark'                      
cmd 'syntax enable'
cmd 'syntax on'

g.auto_save = 1

g.indentLine_enabled = 1
g.indentLine_char_list = {'▏'}

require('treesitter.lua')
require('mappings.lua')

-- highlights 
cmd("hi LineNr guibg=NONE")
cmd("hi SignColumn guibg=NONE")
cmd("hi VertSplit guibg=NONE")
cmd("highlight DiffAdd guifg=#81A1C1 guibg = none")
cmd("highlight DiffChange guifg =#3A3E44 guibg = none")
cmd("highlight DiffModified guifg = #81A1C1 guibg = none")
cmd("hi EndOfBuffer guifg=#282c34")

-- tree folder name , icon color 
cmd("highlight NvimTreeFolderIcon guifg = #61afef")
cmd("highlight NvimTreeFolderName guifg = #61afef")
