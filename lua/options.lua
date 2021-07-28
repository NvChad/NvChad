local opt = vim.opt
local g = vim.g

opt.showmode = false
opt.ruler = false
opt.hidden = true
opt.ignorecase = true
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.cul = true
opt.mouse = "a"
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.updatetime = 250 -- update interval for gitsigns
opt.timeoutlen = 400
opt.clipboard = "unnamedplus"

-- disable nvim intro
opt.shortmess:append("sI")

-- disable tilde on end of buffer: https://github.com/  neovim/neovim/pull/8546#issuecomment-643643758
vim.cmd("let &fcs='eob: '")
opt.showmatch = true
opt.linebreak = true
opt.completeopt = "menuone,noselect"
opt.autochdir = true

-- Search
opt.incsearch = true
opt.smartcase = true

-- Files
--"打开文件监视。如果在编辑过程中文件发生外部改变（比如被别的编辑器编辑了），就会发出提示。
opt.autoread = true
--"自动保存
opt.autowrite = true
--"增强撤销
opt.undofile = true
opt.fileformats = 'unix'
opt.encoding = 'utf-8'

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true

-- Indenline
opt.expandtab = true
opt.shiftwidth = 2
opt.smarttab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true
--使用与上一行同样的缩进
--opt.autoindent = true

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append("<>hl")

g.mapleader = " "
g.auto_save = false
-- Folding
opt.foldenable = true
opt.foldlevelstart = 3
opt.foldnestmax = 10
opt.foldmethod = "indent"

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

-- file extension specific tabbing
vim.cmd([[autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4]])
vim.cmd([[autocmd BufWritePre *.go lua vim.lsp.buf.formatting_sync(nil, 1000)]])
vim.cmd([[autocmd BufWritePre *.go lua goimports(1000)]])
