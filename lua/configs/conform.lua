local conform = require "conform"

-- Alternal (toggles)
vim.keymap.set("n", "<leader>uf", "<cmd>FormatToggle!<cr>", { desc = "Autoformat toggle buffer" })
vim.keymap.set("n", "<leader>uF", "<cmd>FormatToggle<cr>", { desc = "Autoformat toggle global" })

local function show_notification(message, level)
  vim.notify(message, level, { title = "conform.nvim" })
end

conform.setup {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    typescript = { "prettierd" },
    javascript = { "prettierd" },
    ["yaml.docker-compose"] = { { "prettierd", "prettier" } },
  },
  format_on_save = function(bufnr)
    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
      return
    end
    return { timeout_ms = 500, lsp_fallback = true }
  end,
}

vim.api.nvim_create_user_command("FormatToggle", function(args)
  local is_global = not args.bang
  if is_global then
    vim.g.disable_autoformat = not vim.g.disable_autoformat
    if vim.g.disable_autoformat then
      show_notification("Autoformat-on-save disabled globally", "info")
    else
      show_notification("Autoformat-on-save enabled globally", "info")
    end
  else
    vim.b.disable_autoformat = not vim.b.disable_autoformat
    if vim.b.disable_autoformat then
      show_notification("Autoformat-on-save disabled for this buffer", "info")
    else
      show_notification("Autoformat-on-save enabled for this buffer", "info")
    end
  end
end, {
  desc = "Toggle autoformat-on-save",
  bang = true,
})
