return {
  enabled = false,
  "mfussenegger/nvim-lint",
  -- ft = {
  --   "typescript",
  --   "typescriptreact",
  --   "javascript",
  --   "javascriptreact",
  -- },
  opts = {
    linters_by_ft = {
      typescript = { "eslint_d" },
      javascript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      ["docker-compose"] = { "hadolint" },
    },
  },
  config = function(_, opts)
    -- npm install -g eslint_d
    local utils = require "utils"

    local lint = require "lint"
    lint.linters_by_ft = opts.linters_by_ft

    -- lint.try_lint() -- start linter immediately
    local timer = vim.loop.new_timer()
    -- utils.autocmd({ "BufWritePost", "BufReadPost", "InsertLeave", "TextChanged" }, {
    utils.autocmd({ "BufEnter", "BufWritePost" }, {
      group = utils.augroup "Lint",
      callback = function()
        timer:start(100, 0, function()
          timer:stop()
          vim.schedule(lint.try_lint)
        end)
      end,
    })
  end,
}
-- EOP
