local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "luau",
    "luap",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "cpp",
    "c_sharp",
    "markdown",
    "markdown_inline",
    "vue",
    "scss",
    "tsx",
    "json",
    "make",
    "rust",
    "svelte",
    "yaml",
    "xml",
    "zig",
    "toml",
    "sql",
    "gitignore",
    "gitcommit",
    "gitattributes",
    "dockerfile",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },

  context_commentstring = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

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

return M
