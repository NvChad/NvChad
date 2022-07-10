local null_ls = require "null-ls"
local b = null_ls.builtins

-- these are binary that must be installed separatly on system
local sources = {

  -- b.formatting.prettierd.with { filetypes = { "html", "markdown", "css" } },
  -- b.formatting.deno_fmt,

  b.formatting.autopep8, -- python
  b.formatting.lua_format, -- lua
  b.formatting.shfmt, -- shell
  -- b.diagnostics.shellcheck.with {diagnostics_format = "#{m} [#{c}]"}, -- shell
  b.diagnostics.eslint, b.code_actions.eslint, b.formatting.prettier
}

local M = {}

M.setup = function()
  null_ls.setup {
    debug = true,
    sources = sources

    -- format on save
    -- on_attach = function(client)
    --     if client.resolved_capabilities.document_formatting then
    --         vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
    --     end
    -- end
  }
end

return M
