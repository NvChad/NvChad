local function lspSymbol(name, icon)
   local hl = "DiagnosticSign" .. name
   vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
end

lspSymbol("Error", "")
lspSymbol("Info", "")
lspSymbol("Hint", "")
lspSymbol("Warn", "")

-- @!:manual_change vitual_text and sings are changed and float is added
vim.diagnostic.config {
   virtual_text = false,
   float = {
       source = "always",
       border = "none",
   },
   signs = false,
   underline = true,
   update_in_insert = false,
}

-- @!:manual_change border is changed
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
   border = "none",
})

-- @!:manual_change border is changed
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
   border = "none",
})

-- suppress error messages from lang servers
vim.notify = function(msg, log_level)
   if msg:match "exit code" then
      return
   end
   if log_level == vim.log.levels.ERROR then
      vim.api.nvim_err_writeln(msg)
   else
      vim.api.nvim_echo({ { msg } }, true, {})
   end
end

-- Borders for LspInfo winodw
local win = require "lspconfig.ui.windows"
local _default_opts = win.default_opts

-- @!:manual_change border is changed
win.default_opts = function(options)
   local opts = _default_opts(options)
   opts.border = "none"
   return opts
end
