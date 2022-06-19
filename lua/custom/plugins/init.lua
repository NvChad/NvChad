local M = {}
M.custom_nvimtree_config = require("custom.plugins.configs.nvimtree")
M.custom_gitsigns_config = require("custom.plugins.configs.gitsigns")
-- note: lspconfig file (custom.plugins.configs.lspconfig) is used in "option" in chadrc file
M.additional_plugins = {
    ["justinmk/vim-sneak"] = {},
    ["tpope/vim-fugitive"] = {},
    ["goolord/alpha-nvim"] = {
        disable = false,
    },
}

return M
