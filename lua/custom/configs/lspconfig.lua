local on_attach=require("plugins.configs.lspconfig").on_attach;
local capabilities=require("plugins.configs.lspconfig").capabilities;
local lspconfig=require("lspconfig");
local configs=require("plugins.configs.lspconfig");


lspconfig.clangd.setup({
  on_attach=on_attach,
  capabilities=capabilities,
  filetypes={"c","cpp"},
  cmd={"clangd"}
});

lspconfig.denols.setup({
  on_attach=on_attach,
  capabilities=capabilities,
  -- root_dir=lspconfig.util.root_pattern("deno.json","deno.jsonc"),
  filetypes={"javascript","typescript","javascriptreact","typescriptreact","javascript.jsx","typescript.tsx"},
  cmd={"deno","lsp"}
});



