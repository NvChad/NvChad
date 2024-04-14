local null_ls = require "null-ls"

local b = null_ls.builtins
-- auto format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,                                                                    -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css", "yaml", "json" } }, -- so prettier works only on these filetypes

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,

  -- golang
  b.formatting.gofumpt,
  b.formatting.goimports_reviser,
  b.formatting.golines,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- terraform
  b.formatting.terraform_fmt,

  --python
  null_ls.builtins.formatting.black,
  null_ls.builtins.diagnostics.mypy.with {
    extra_args = function()
      local virtual = os.getenv "VIRTUAL_ENV" or os.getenv "CONDA_PREFIX" or "/usr"
      return { "--python-executable", virtual .. "/bin/python3" }
    end,
  },
}

null_ls.setup {
  debug = true,
  sources = sources,

  -- auto format on save
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}
