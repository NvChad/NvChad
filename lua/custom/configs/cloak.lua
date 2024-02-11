local options = {
  enabled = true,
  cloak_character = "*",
  -- applied highlight group (colors) on the cloacking, see `:h highlight`
  highlight_group = "Comment",
  patterns = {
    {
      file_pattern = {
        ".env*",
      },
    },
  },
}

require("cloak").setup(options)
