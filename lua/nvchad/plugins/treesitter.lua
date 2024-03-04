local config = {
  ensure_installed = { "lua", "vim", "vimdoc" },

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = { enable = true },
}

return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
  build = ":TSUpdate",
  opts = config,
  config = function(_, opts)
    dofile(vim.g.base46_cache .. "syntax")
    dofile(vim.g.base46_cache .. "treesitter")
    require("nvim-treesitter.configs").setup(opts)
  end,
}
