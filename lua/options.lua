local options = require("chadrc").options

vim.opt.undofile = options.permanent_undo
vim.opt.ruler = options.ruler
vim.opt.hidden = options.hidden
vim.opt.ignorecase = options.ignorecase
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.opt.cul = true
vim.opt.mouse = options.mouse
vim.opt.signcolumn = "yes"
vim.opt.cmdheight = options.cmdheight
vim.opt.updatetime = options.updatetime -- update interval for gitsigns
vim.opt.timeoutlen = options.timeoutlen
vim.opt.clipboard = options.clipboard

-- disable nvim intro
vim.opt.shortmess:append("sI")

-- disable tilde on end of buffer: https://github.com/  neovim/neovim/pull/8546#issuecomment-643643758
vim.opt.fillchars = {eob = " "}

-- Numbers
vim.opt.number = options.number
vim.opt.numberwidth = options.numberwidth
-- vim.opt.relativenumber = true

-- Indenline
vim.opt.expandtab = options.expandtab
vim.opt.shiftwidth = options.shiftwidth
vim.opt.smartindent = options.smartindent

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
vim.opt.whichwrap:append("<>hl")

vim.g.mapleader = options.mapleader
vim.g.auto_save = options.autosave

-- disable builtin vim plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit"
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end

-- Don't show status line on vim terminals
vim.cmd [[ au TermOpen term://* setlocal nonumber laststatus=0 ]]

-- Open a file from its last left off position
-- vim.cmd [[ au BufReadPost * if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]]
-- File extension specific tabbing
-- vim.cmd [[ autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 ]]
