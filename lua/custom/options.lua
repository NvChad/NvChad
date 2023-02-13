-- custom options
local opt = vim.opt
local g = vim.g

g.python3_host_prog = '/fast-home/mehdi/.pyenv/versions/py3nvim/bin/python'

opt.encoding = "UTF-8"
opt.fileformat = "unix"
opt.wildmenu = true
opt.wildmode = "longest:full,full"

opt.expandtab = true -- convert tabs to spaces
opt.tabstop = 4 --  each tab is 4 spaces
opt.shiftwidth = 4 -- use 4 spaces for autoindent

-- [[ Plugin: indent-blankine ]] --
opt.list = true
g.indent_blankline_use_treesitter = true

-- [[ Plugin: vim-sneak ]] --
g["sneak#label"] = 1
-- O, o, I, i cause problem in labels because we are in normal mode
g["sneak#target_labels"] = ";sftunq/SFGHLTUNRMQZ"

-- [[ Plugin: vimwiki ]] --
-- avoid to vimwiki to set the markdown file types to vimwiki
-- based on: https://github.com/nanotee/nvim-lua-guide
-- i used below syntax because I do not know how pass a empty list to vimwiki_ext2syntax in lua
vim.cmd([[
    let g:vimwiki_ext2syntax = {}
]])
-- g.vimwiki_ext2syntax = {[".md"] = "markdown"}
g.vimwiki_global_ext = 0
g.vimwiki_list = {{path = "~/vimwiki/general"}, {path = "~/vimwiki/vocabulary"}}

-- [[ Plugin: slime ]] --
g.slime_no_mappings = 1
g.slime_target = "neovim"
g.slime_cell_delimiter = "#%%"
-- g.slime_target = "tmux"
-- g.slime_default_config = {socket_name = "default", target_pane= "{last}"}
-- g.slime_dont_ask_default = 1

-- [[ Plugin: close-tag ]] --
g.closetag_filetypes = "html,xhtml,phtml,vue"
g.closetag_regions = {
  ['typescript.tsx'] = 'jsxRegion,tsxRegion',
  ['javascript.jsx'] = 'jsxRegion',
  ['typescriptreact'] = 'jsxRegion,tsxRegion',
  ['javascriptreact'] = 'jsxRegion'
}

-- [[ Plugin: juypter-vim ]] --
g.jupyter_mapkeys = 0

-- [[ Setting: providers ]]
-- see: https://neovim.io/doc/user/provider.html
-- https://github.com/NvChad/NvChad/pull/1282
-- https://github.com/NvChad/NvChad/issues/1230

local enable_providers = {"python3_provider", "node_provider"}
for _, plugin in pairs(enable_providers) do
  vim.g["loaded_" .. plugin] = nil
  vim.cmd("runtime " .. plugin)
end



