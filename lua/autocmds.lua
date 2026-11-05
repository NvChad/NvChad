require "nvchad.autocmds"

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "python", "lua", "bash", "json", "toml" },
  callback = function(args)
    pcall(vim.treesitter.start, args.buf) 
  end,
})
