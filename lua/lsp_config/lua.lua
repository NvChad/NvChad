vim.cmd [[ packadd nvim-lspconfig ]]
vim.cmd [[ packadd completion-nvim ]]

-- Enable(broadcasting) snippet capability for completion
local html_snippet_capabilities = vim.lsp.protocol.make_client_capabilities()
html_snippet_capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
	on_attach = lsp_on_attach,
	capabilities = html_snippet_capabilities,
	cmd = { "html-languageserver", "--stdio" };
	filetypes = { "html" };
	init_opitons = {
		configurationSection = { "html", "css", "javascript" };
		embeddedLanguages = {
			css = true,
			javascript = true,
		};
	};
}

vim.g.completion_enable_snippet = 'UltiSnips'

