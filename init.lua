local cmd = vim.cmd
local g = vim.g
local o = vim.o
-- Nvim providers {
-- Python
g.python3_host_prog = '/usr/bin/python3'
-- Ruby
g.ruby_host_prog = "/usr/bin/ruby"
--
-- Disable providers we do not give a shit about
g.loaded_python_provider  = 0
g.loaded_perl_provider    = 0
-- }

-- load all plugins
require "pluginList"
require "misc-utils"

require "top-bufferline"
require "statusline"

require("colorizer").setup()
require("neoscroll").setup() -- smooth scroll

-- lsp stuff
require "nvim-lspconfig"
require "compe-completion"

g.mapleader = " "
g.auto_save = 0
-- CUSTOM BINDING --
g.move_key_modifier = 'C'

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

require "treesitter-nvim"
require "mappings"

require "telescope-nvim"
require "nvimTree" -- file tree stuff
require "file-icons"

-- git signs , lsp symbols etc
require "gitsigns-nvim"
require("nvim-autopairs").setup()
require("lspkind").init()

-- hide line numbers in terminal windows
vim.api.nvim_exec([[
   au BufEnter term://* setlocal nonumber
]], false)
-- Instead of reverting the cursor to the last position in the buffer, we
-- set it to the first line when editing a git commit message
vim.api.nvim_exec([[
   au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])
]], false)

require "zenmode"
-- require "whichkey"
require "dashboard"
require('nvim_comment').setup()

o.encoding = 'utf-8'
o.backspace = 'indent,eol,start'
o.relativenumber = true
o.inccommand = 'nosplit'
cmd "filetype plugin indent on"

-- Plugins Settings
-- Editorconfig {
g.EditorConfig_exclude_patterns = {'fugitive://.*', 'scp://.*', 'fzf://.*'}
g.EditorConfig_max_line_indicator = 'line'
-- }
