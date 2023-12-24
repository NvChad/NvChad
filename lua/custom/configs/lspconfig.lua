local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local util = require "lspconfig/util"

lspconfig.bashls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
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
}

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
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
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.tflint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    yaml = {
      schemas = {
        ["https://panther-community-us-east-1.s3.amazonaws.com/latest/logschema/schema.json"] = "internal/log_analysis/yamlschemas/schemas/**/*.yml",
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
