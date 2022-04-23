require("plugins.configs.others").lsp_handlers()

local opts = { noremap = true, silent = true }

local set_map = vim.api.nvim_set_keymap

set_map("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
set_map("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
set_map("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
set_map("n", "<space>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

local on_attach = function(client, bufnr)
   vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

   -- as we use null-ls formatter by default so we disable the inbult lsp formatter
   client.resolved_capabilities.document_formatting = false
   client.resolved_capabilities.document_range_formatting = false

   -- Mappings.
   -- See `:help vim.lsp.*` for documentation on any of the below functions

   local buf_map = vim.api.nvim_buf_set_keymap

   buf_map(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
   buf_map(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
   buf_map(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
   buf_map(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
   buf_map(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
   buf_map(bufnr, "n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
   buf_map(bufnr, "n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
   buf_map(bufnr, "n", "<space>wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
   buf_map(bufnr, "n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
   buf_map(bufnr, "n", "<space>ra", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
   buf_map(bufnr, "n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
   buf_map(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
   buf_map(bufnr, "n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.documentationFormat = { "markdown", "plaintext" }
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.preselectSupport = true
capabilities.textDocument.completion.completionItem.insertReplaceSupport = true
capabilities.textDocument.completion.completionItem.labelDetailsSupport = true
capabilities.textDocument.completion.completionItem.deprecatedSupport = true
capabilities.textDocument.completion.completionItem.commitCharactersSupport = true
capabilities.textDocument.completion.completionItem.tagSupport = { valueSet = { 1 } }
capabilities.textDocument.completion.completionItem.resolveSupport = {
   properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
   },
}

-- local servers = { "pyright", "rust_analyzer", "tsserver" }

local servers = {}

for _, lsp in pairs(servers) do
   require("lspconfig")[lsp].setup {
      on_attach = on_attach,
      capabilities = capabilities,
   }
end
