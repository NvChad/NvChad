local options = {
  ensure_installed = { "lua", "vim", "vimdoc" },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
  autotag = {
    enable = true,
    enable_ranme = true,
    enable_close = true,
    enable_close_on_slash = true,
    filetyoes = {"html", "xml"},
  },
}

return options
