local M = {}
M.nvimtree_config = require("custom.plugins.configs.nvimtree")
M.gitsigns_config = require("custom.plugins.configs.gitsigns")
M.telescope_config = require("custom.plugins.configs.telescope")
M.treesitter_config = require("custom.plugins.configs.treesitter")

-- note: lspconfig file (custom.plugins.configs.lspconfig) is used in "option" in chadrc file
M.additional_plugins = {
    ["justinmk/vim-sneak"] = {},
    ["tpope/vim-fugitive"] = {},
    ["goolord/alpha-nvim"] = {
        disable = false,
    },
    ["vimwiki/vimwiki"] = {},
}

return M
