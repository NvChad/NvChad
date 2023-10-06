local rt = require "rust-tools"

rt.setup {
  tools = {},
  server = {
    on_attach = function(client, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
      -- more keymaps:
      local opts = { noremap = true, silent = true, buffer = bufnr }
      vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- already in core/mappings.lua
      vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
      vim.keymap.set("n", "<leader>ra", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
      vim.keymap.set("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
      vim.keymap.set("n", "<leader>cd", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    end,
  },
  dap = {},
}
