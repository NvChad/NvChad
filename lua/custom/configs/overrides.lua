local M = {}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- inline git blame
M.gitsigns = {
  current_line_blame = true,
}

-- syntax highlight
M.treesitter = {
  ensure_installed = {
    "go",
    "gosum",
    "gomod",
    "yaml",
  },
}

M.mason = {
  ensure_installed = {
    "gopls",
  },
}

return M
