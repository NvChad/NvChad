local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
   return
end

local options = {
   ensure_installed = {
      "lua",
      "vim",
   },
   highlight = {
      enable = true,
      use_languagetree = true,
   },
}

-- check for any override
options = require("core.utils").load_override(options, "nvim-treesitter/nvim-treesitter")

treesitter.setup(options)
