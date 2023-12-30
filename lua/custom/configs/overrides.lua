
local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "nasm",
    "c",
    "cpp",
    "make",
    "python",
    "java",
    "kotlin",
    "rust",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "markdown",
    "markdown_inline",
    "latex",
    "csv",
    "dockerfile",
    "diff",
    "git_config",
    "git_rebase",
    "gitattributes",
    "gitcommit",
    "gitignore",
    "json",
    "yaml",
    "toml",
    "xml",
    "yuck",
    "sxhkdrc",
  },

  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- rust stuff
    "rust-analyzer",
  }
}

return M
