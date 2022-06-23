-- custom options
local opt = vim.opt
local g = vim.g

opt.encoding = "UTF-8"
opt.fileformat = "unix"
opt.wildmenu = true
opt.wildmode = "longest:full,full"

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4

-- [[ indent-blankine plugin]]
opt.list = true
g.indent_blankline_use_treesitter = true

-- [[ vim-sneak plugin ]]
g["sneak#label"] = 1
-- O, o, I, i cause problem in labels because we are in normal mode
g["sneak#target_labels"] = ";sftunq/SFGHLTUNRMQZ"
