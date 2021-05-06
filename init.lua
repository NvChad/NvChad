-- load all plugins
require "pluginList"
require "file-icons"

require "misc-utils"
require "top-bufferline"
require "statusline"

require("colorizer").setup()
require("neoscroll").setup() -- smooth scroll

-- lsp
require "nvim-lspconfig"
require "compe-completion"

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 0

-- colorscheme related stuff

cmd "syntax on"

local base16 = require "base16"
base16(base16.themes["onedark"], true)

-- blankline

local indent = 2

g.indentLine_enabled = 1
g.indent_blankline_char = "▏"

cmd "hi IndentBlanklineChar guifg=#2a2e36"

g.indent_blankline_filetype_exclude = {"help", "terminal"}
g.indent_blankline_buftype_exclude = {"terminal"}

g.indent_blankline_show_trailing_blankline_indent = false
g.indent_blankline_show_first_indent_level = false

require "treesitter-nvim"
require "mappings"

-- highlights --
cmd "hi LineNr guifg=#42464e"
cmd "hi Comment guifg=#42464e"

cmd "hi VertSplit guifg=#2a2e36"
cmd "hi EndOfBuffer guifg=#1e222a"
cmd "hi PmenuSel guibg=#98c379"
cmd "hi Pmenu  guibg=#282c34"

require "telescope-nvim"
require "nvimTree"

-- git signs , lsp symbols etc
require "gitsigns-nvim"
require("nvim-autopairs").setup()
require("lspkind").init()

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

-- inactive statuslines as thin splitlines
cmd("highlight! StatusLineNC gui=underline guifg=#383c44")

cmd "hi clear CursorLine"
cmd "hi cursorlinenr guifg=#abb2bf"

-- setup for TrueZen.nvim
require "zenmode"
