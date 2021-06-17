-- These files are being read from the files inside lua directory.
-- So if you wanna make changes to the config go ahead inside the lua direcotry and check around :p.

local cmd = vim.cmd
local g = vim.g

-- load all plugins
require "pluginList" -- Plugins
require "misc-utils" -- Settings

require "top-bufferline" -- Bufferline
require "statusline" -- statusline

require("colorizer").setup() -- Colorizer
require("neoscroll").setup() -- smooth scroll

-- lsp stuff
require "nvim-lspconfig"
require "compe-completion" -- Completion

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff
cmd "syntax on"

local base16 = require "base16"
base16(base16.themes["onedark"], true)

require "highlights"

-- blankline

g.indentLine_enabled = 1
g.indent_blankline_char = "▏"

g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
g.indent_blankline_buftype_exclude = {"terminal"}

g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

-- Treesitter
require "treesitter-nvim"
require "mappings"

-- Finder and Explorer
require "telescope-nvim"
require "nvimTree" -- file tree stuff
require "file-icons" -- file icons

-- git signs , lsp symbols etc
require "gitsigns-nvim"
require("nvim-autopairs").setup()
require("lspkind").init()

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

require "zenmode"
require "whichkey" -- whick key
require "dashboard" -- dashboard
require('nvim_comment').setup() -- commenter
