local M = {}

-- NvimTree git support
M.nvimtree = {
  filters = {
    dotfiles = true,
  },

  renderer = {
    indent_markers = {
      enable = true,
  },

  git = {
    enable = true,
  },

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
    "cpp",
    "css",
    "dockerfile",
    "go",
    "gosum",
    "gomod",
    "graphql",
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

-- LSPs, Linters, Debuggers and Formatters
M.mason = {
  ensure_installed = {
    "black",
    "clangd",
    "clang-format",
    "debugpy",
    "delve",
    "gopls",
    "markdownlint",
    "marksman",
    "pyright",
    "yamlfmt",
    "yaml-language-server",
  },
}

return M
