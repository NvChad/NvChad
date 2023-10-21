local M = {}

-- NvimTree git support
M.nvimtree = {

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
    "csv",
    "diff",
    "dockerfile",
    "go",
    "gosum",
    "gomod",
    "git_config",
    "gitignore",
    "graphql",
    "html",
    "javascript",
    "json",
    "make",
    "markdown",
    "python",
    "scss",
    "terraform",
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
    "stylua",
    "markdownlint",
    "marksman",
    "pyright",
    "yamlfmt",
    "yaml-language-server",
  },
}

return M
