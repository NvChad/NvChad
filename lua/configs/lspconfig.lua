require("nvchad.configs.lspconfig").defaults()

-- Проверка типов и навигация Python
vim.lsp.config("basedpyright", {
  settings = {
    basedpyright = {
      analysis = {
        typeCheckingMode = "standard",
        autoSearchPaths = true,
        diagnosticMode = "openFilesOnly",
      },
    },
  },
})

-- Линтер Ruff
vim.lsp.config("ruff", {
  capabilities = {
    general = {
      positionEncodings = { "utf-16" },
    },
  },
  on_attach = function(client)
    -- Hover обрабатывает BasedPyright
    client.server_capabilities.hoverProvider = false
  end,
})

vim.lsp.enable({
  "basedpyright",
  "ruff",
})

