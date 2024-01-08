local on_attach    = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig    = require("lspconfig")
local util         = require "lspconfig/util"

lspconfig.gopls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    cmd = { "gopls" },
    fileTypes = { "go", "gomod", "gowork", "gotmpl" },
    root_dir= util.root_pattern("go.work", "go.mod", ".git")
}

lspconfig.rust_analyzer.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    fileTypes = { "rust", "rs" },
    root_dir= util.root_pattern("Cargo.toml"),
    settings={
      ['rust_analyzer'] = {
        cargo = {
          allFeatures = true
      }
    }
  }
}
