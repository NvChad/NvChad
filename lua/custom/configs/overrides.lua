local M = {}

-- NvimTree git support
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
    "bash",
    "css",
    "go",
    "gosum",
    "gomod",
    "html",
    "javascript",
    "json",
    "markdown",
    "python",
    "toml",
    "tsx",
    "yaml",
  },
}

-- LSPs, Linters and Formatters
M.mason = {
  ensure_installed = {
    "black",
    "gopls",
    "pyright",
  },
}

return M
