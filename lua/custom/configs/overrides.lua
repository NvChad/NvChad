local M = {}

-- Prevent error during the initial Lazy bootstrap:
--   Error detected while processing ~/.config/nvim/init.lua:
--   Failed to load `custom.plugins`
--   ~/.config/nvim/lua/custom/plugins.lua:1: loop or previous error loading module 'custom.configs.overrides'
local cmp_ok, cmp = pcall(require, "cmp")

if cmp_ok then
  M.cmp = {
    completion = {
      completeopt = "menu,menuone,noselect",
    },
    mapping = {
      ["<CR>"] = cmp.mapping.confirm { select = false },
      ["<C-d>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
    },
    window = {
      -- https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(), -- for docs
    },
    sources = {
      { name = "crates" },
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "buffer" },
      { name = "nvim_lua" },
      { name = "path" },
      { name = "tailwindcss" },
    },
  }
end

-- :help nvim-tree
M.nvimtree = {
  git = {
    enable = true,
    ignore = false,
    show_on_dirs = true,
    show_on_open_dirs = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = "all", -- default is "none"
    highlight_diagnostics = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
  view = {
    signcolumn = "yes", -- default is "yes"
  },
  update_focused_file = {
    enable = true,
  },
}

return M
