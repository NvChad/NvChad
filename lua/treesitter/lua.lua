local ts_config = require("nvim-treesitter.configs")

ts_config.setup {
    ensure_installed = "maintained",
    highlight = {
        enable = true,
        use_languagetree = true
    }
}

