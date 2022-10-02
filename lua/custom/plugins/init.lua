return {
   ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
    },
    ["simrat39/rust-tools.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.rust-tools"
    end,
  },
  ["wbthomason/packer.nvim"] = {
    options = {
      ensure_install = {  "lua-language-server" , "pyright", "clangd", "rust-analyzer"}
    }
  },
    ["sbdchd/neoformat"] = {},
    ["kyazdani42/nvim-tree.lua"] = {
      cmd = { "NvimTreeToggle", "NvimTreeFocus" },
      config = function()
        require "custom.plugins.nvim-tree"
      end,
    },
}
