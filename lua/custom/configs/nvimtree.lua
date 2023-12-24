local M = {}

M.opts = {
  filters = {
    dotfiles = true,
  },
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    indent_markers = {
      enable = true,
    },
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
