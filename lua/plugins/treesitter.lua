
return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",

    -- Заменяем старые настройки NvChad
    opts = function()
      return {}
    end,

    config = function()
      require("nvim-treesitter").setup({
        install_dir =
          vim.fn.stdpath("data") .. "/site",
      })
    end,
  },
}

