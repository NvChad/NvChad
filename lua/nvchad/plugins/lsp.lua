return {
  "neovim/nvim-lspconfig",
  event = "User FilePost",
  config = function()
    require("nvchad.configs.lspconfig").defaults()
  end,
}
