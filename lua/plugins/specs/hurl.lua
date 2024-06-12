return {
  "jellydn/hurl.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  ft = "hurl",
  opts = {
    -- Show notification on run
    show_notification = false,
    -- Show response in popup or split
    mode = "split",
    -- Default formatter
    formatters = {
      json = { "jq" }, -- Make sure you have install jq in your system, e.g: brew install jq
      html = {
        "prettier", -- Make sure you have install prettier in your system, e.g: npm install -g prettier
        "--parser",
        "html",
      },
    },
  },
  config = function(_, opts)
    local map = vim.keymap.set
    map("n", "rf", "<Cmd>HurlRunner<CR>", { desc = "Run all" })
    map("n", "rr", "<Cmd>HurlRunnerAt<CR>", { desc = "Run request" })
    map("n", "re", "<Cmd>HurlRunnerToEntry<CR>", { desc = "Run request entry" })
    map("n", "rv", "<Cmd>HurlVerbose<CR>", { desc = "Run request verbose" })
    require("hurl").setup(opts)
  end,
}
