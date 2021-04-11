-- load all plugins
require "pluginsList.lua"
require "file-icons.lua"

require "misc-utils.lua"
require "bufferline.lua"
require "statusline.lua"

require("colorizer").setup()
require("neoscroll").setup() -- smooth scroll

-- lsp
require "lspconfig.lua"
require "compe.lua"

local cmd = vim.cmd
local g = vim.g

g.mapleader = " "
g.auto_save = 1

-- colorscheme related stuff

cmd "syntax enable"
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

require("treesitter.lua")
require("mappings.lua")

-- highlights --
cmd "hi LineNr guifg=#42464e guibg=NONE"
cmd "hi Comment guifg=#42464e"

cmd "hi SignColumn guibg=NONE"
cmd "hi VertSplit guibg=NONE guifg=#2a2e36"
cmd "hi EndOfBuffer guifg=#1e222a"
cmd "hi PmenuSel guibg=#98c379"
cmd "hi Pmenu  guibg=#282c34"

cmd "hi Normal guibg=NONE ctermbg=NONE"

require "telescope.lua"
require "nvimTree.lua"

-- git signs
require "gitsigns.lua"

require("nvim-autopairs").setup()

require("lspkind").init(
    {
        with_text = true,
        symbol_map = {
            Folder = ""
        }
    }
)

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)

-- inactive statuslines as thin splitlines
cmd("highlight! StatusLineNC gui=underline guibg=NONE guifg=#383c44")

cmd "hi clear CursorLine"
cmd "hi cursorlinenr guibg=NONE guifg=#abb2bf"
