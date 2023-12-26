local M = {}

-- LSPs, Linters, Debuggers and Formatters
M.opts = {
  ensure_installed = {
    "bash-language-server",
    "beautysh",
    "black",
    "clangd",
    "clang-format",
    "debugpy",
    "delve",
    "dockerfile-language-server",
    "golangci-lint",
    "gopls",
    "stylua",
    "terraform-ls",
    "tflint",
    "typescript-language-server",
    "lua-language-server",
    "markdownlint",
    "marksman",
    "prettier",
    "pyright",
    "rubyfmt",
    "yamlfmt",
    "yaml-language-server",
  },
}

return M
