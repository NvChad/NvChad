local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

lspconfig.bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "bash", "sh", "zsh" },
}

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelperProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
}

lspconfig.marksman.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "markdown" },
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "python" },
  settings = {
    python = {
      analysis = {
        extraPaths = {
          "global_helpers",
        },
      },
    },
  },
}

lspconfig.terraformls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "terraform" },
}

-- typescript language sercer
lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "javascript", "typescript", "typescriptreact" },
}

lspconfig.tflint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "terraform" },
}

lspconfig.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
        ["https://panther-community-us-east-1.s3.amazonaws.com/latest/logschema/schema.json"] = "internal/log_analysis/yamlschemas/schemas/**",
        ["https://panther-community-us-east-1.s3.amazonaws.com/latest/logschema/schema-tests.json"] = "internal/log_analysis/yamlschemas/schemas/**/*_tests.yml",
        ["https://raw.githubusercontent.com/panther-labs/panther_analysis_tool/main/panther_analysis_tool/detection_schemas/analysis_config_schema.json"] = {
          "rules/**",
          "policies/**",
          "queries/**",
        },
      },
    },
  },
}
