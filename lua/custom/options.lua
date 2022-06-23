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

-- vimwiki
-- avoid to vimwiki to set the markdown file types to vimwiki
-- based on: https://github.com/nanotee/nvim-lua-guide
-- i used below syntax because I do not know how pass a empty list to vimwiki_ext2syntax in lua
vim.cmd([[
    let g:vimwiki_ext2syntax = {}
]])
-- g.vimwiki_ext2syntax = {[".md"] = "markdown"}
g.vimwiki_list = {
    {
        path = "~/vimwiki",
    }
}
