local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"

-- rust-tools takes car of rust_analyzer for us, so we don't install it here (or it causes conflicts)
local servers = { "html", "dotls" } -- add any server installed with Mason or system-wide

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = "rounded",
})

vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "rounded",
})

-- Without the loop, you would have to manually set up each LSP
lspconfig.tailwindcss.setup {
  cmd = { "tailwindcss-language-server", "--stdio", "BufEnter" },
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "css",
    "scss",
    "sass",
    "postcss",
    "html",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "svelte",
    "vue",
    "rust",
  },
  init_options = {
    userLanguages = {
      rust = "html",
    },
  },
  -- Here If any of files from list will exist tailwind lsp will activate.
  root_dir = lspconfig.util.root_pattern(
    "tailwind.config.js",
    "tailwind.config.ts",
    "postcss.config.js",
    "postcss.config.ts",
    "windi.config.ts"
  ),
}
