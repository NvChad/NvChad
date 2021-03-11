lua <<EOF
local ts_config = require("nvim-treesitter.configs")

ts_config.setup {
  ensure_installed = {
    "javascript","html","css","bash","cpp","rust"
  },

  highlight = {
    enable = true,
    use_languagetree = true,
  }
}

EOF

