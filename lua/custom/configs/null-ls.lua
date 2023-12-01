local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- cpp
  b.formatting.clang_format,
  b.formatting.rustfmt,

  -- go
  b.formatting.gofmt,
  b.formatting.goimports,

  -- php
  b.diagnostics.php,
  b.formatting.phpcsfixer.with {args = {"--rules=@PSR2", "--no-interaction", "--quiet", "fix", "$FILENAME"}},
}

null_ls.setup {
  debug = true,
  sources = sources,
}
