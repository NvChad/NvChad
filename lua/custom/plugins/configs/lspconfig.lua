local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local lsp_settings = require "custom.lsp"

-- see this for mapping between Mason and LSPConfig server names
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md

-- local servers = {"sumneko_lua", "html", "cssls", "clangd", "pyright", "vuels"}
local servers = {"sumneko_lua", "html", "cssls", "clangd", "pyright", "tsserver", "jsonls", "vuels", "bashls"}
for _, lsp in ipairs(servers) do
  -- default config
  local config = {on_attach = on_attach, capabilities = capabilities}

  -- overriding default config (if exits)
  if lsp_settings[lsp] ~= nil then config = lsp_settings[lsp].create_config(on_attach, capabilities) end

  lspconfig[lsp].setup(config)
end

-- overriding nvchad_ui/lsp.lua
-- TODO: there is not better place to do it?
vim.diagnostic.config {
  virtual_text = false,
  float = {source = "always", border = "rounded"},
  signs = true,
  underline = true,
  update_in_insert = false
}
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {border = "rounded"})
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "rounded",
  focusable = false,
  relative = "cursor"
})

local win = require "lspconfig.ui.windows"
local _default_opts = win.default_opts

win.default_opts = function(options)
  local opts = _default_opts(options)
  opts.border = "rounded"
  return opts
end
-- end of UI customization
