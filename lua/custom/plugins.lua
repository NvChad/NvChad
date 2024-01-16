local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- disable = {"fsharp"},
      ensure_installed = {
        "c_sharp",
      },
      config = function()
        vim.notify("It has been run", vim.log.levels.INFO)
        require "plugins.configs.treesitter"
      end
    }
 },
  { -- Disabled for now until while other is being tested
    "ionide/Ionide-vim",
    enabled = false,
    lazy = true,
    ft = "fsharp",
    init = function ()
      require("core.utils").load_mappings("lspconfig")
    end,
    config = function ()
      -- require "custom.configs.lspconfig"
    end
  },
  {
    "Exafunction/codeium.vim",
    event = 'BufEnter'
  }
}
return plugins
