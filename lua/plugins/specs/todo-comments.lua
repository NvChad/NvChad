dofile(vim.g.base46_cache .. "todo")

return {
  {
    "folke/todo-comments.nvim",
    cmd = { "TodoTrouble", "TodoTelescope", "TodoLocList", "TodoQuickFix" },
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "BufRead",
    opts = {
      sign_priority = 1,
    },
  },
}
