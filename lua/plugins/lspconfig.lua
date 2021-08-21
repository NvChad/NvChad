local present1, lspconfig = pcall(require, "lspconfig")
local present2, lspinstall = pcall(require, "lspinstall")
if not (present1 or present2) then
   return
end

local function on_attach(client, bufnr)
   vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

   local opts = { noremap = true, silent = true }

   -- lsp Mappings.
   vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
   vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
   vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
   vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
   vim.api.nvim_buf_set_keymap(bufnr, "n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
   vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
   vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
   vim.api.nvim_buf_set_keymap(
      bufnr,
      "n",
      "<space>wl",
      "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>",
      opts
   )
   vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
   vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
   vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
   vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
   vim.api.nvim_buf_set_keymap(bufnr, "n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
   vim.api.nvim_buf_set_keymap(bufnr, "n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
   vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>q", "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", opts)

   -- Set some keybinds conditional on server capabilities
   if client.resolved_capabilities.document_formatting then
      vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
   elseif client.resolved_capabilities.document_range_formatting then
      vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
   end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- lspInstall + lspconfig stuff

local function setup_servers()
   lspinstall.setup()
   local servers = lspinstall.installed_servers()

   for _, lang in pairs(servers) do
      if lang ~= "lua" then
         lspconfig[lang].setup {
            on_attach = on_attach,
            capabilities = capabilities,
            -- root_dir = vim.loop.cwd,
         }
      elseif lang == "lua" then
         lspconfig[lang].setup {
            settings = {
               Lua = {
                  diagnostics = {
                     globals = { "vim" },
                  },
                  workspace = {
                     library = {
                        [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                        [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
                     },
                     maxPreload = 100000,
                     preloadFileSize = 10000,
                  },
                  telemetry = {
                     enable = false,
                  },
               },
            },
         }
      end
   end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
lspinstall.post_install_hook = function()
   setup_servers() -- reload installed servers
   vim.cmd "bufdo e"
end

-- replace the default lsp diagnostic symbols
function lspSymbol(name, icon)
   vim.fn.sign_define("LspDiagnosticsSign" .. name, { text = icon, numhl = "LspDiagnosticsDefaul" .. name })
end

lspSymbol("Error", "")
lspSymbol("Warning", "")
lspSymbol("Information", "")
lspSymbol("Hint", "")

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
   virtual_text = {
      prefix = "",
      spacing = 0,
   },
   signs = true,
   underline = true,
   update_in_insert = false, -- update diagnostics insert mode
})

-- suppress error messages from lang servers
vim.notify = function(msg, log_level, _opts)
   if msg:match "exit code" then
      return
   end
   if log_level == vim.log.levels.ERROR then
      vim.api.nvim_err_writeln(msg)
   else
      vim.api.nvim_echo({ { msg } }, true, {})
   end
end
