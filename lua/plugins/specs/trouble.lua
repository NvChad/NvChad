local spec = {
  "folke/trouble.nvim",
  cmd = { "TroubleToggle", "Trouble" },
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    vim.keymap.set(
      "n",
      "<leader>xx",
      "<cmd>Trouble diagnostics toggle focus=true<cr>",
      { desc = "Diagnostics (Trouble)" }
    )
    vim.keymap.set(
      "n",
      "<leader>xX",
      "<cmd>Trouble diagnostics toggle filter.buf=0 focus=true<cr>",
      { desc = "Diagnostics Buffer (Trouble)" }
    )
    vim.keymap.set("n", "<leader>xL", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })
    vim.keymap.set("n", "<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
    vim.keymap.set(
      "n",
      "<leader>xl",
      "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
      { desc = "LSP Definitions / references / ... (Trouble)" }
    )
    vim.keymap.set("n", "<leader>xq", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })

    vim.keymap.set("n", "<leader>xt", "<cmd>TodoTrouble<cr>", { desc = "Todo (Trouble)" })
    -- local prefix = "<Leader>x"
    -- maps.n[prefix] = { desc = require("astroui").get_icon("Trouble", 1, true) .. "Trouble" }
    -- if require("astrocore").is_available "todo-comments.nvim" then
    --   maps.n["<leader>xt"] = {
    --     "<cmd>TodoTrouble<cr>",
    --     desc = "Todo (Trouble)",
    --   }
    --   maps.n["<leader>xT"] = {
    --     "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>",
    --     desc = "Todo/Fix/Fixme (Trouble)",
    --   }
    -- end
  end,
  opts = function()
    return "configs.trouble"
  end,
}

return spec
