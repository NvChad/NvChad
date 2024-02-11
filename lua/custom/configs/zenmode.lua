local options = {
  window = {
    backdrop = 0.93,
    width = 150,
    height = 1,
  },
  plugins = {
    options = {},
    twilight = {},
    gitsigns = {},
  }
}

require("zen-mode").setup(options)
