local present, ts_config = pcall(require, "nvim-treesitter.configs")
if not present then
   return
end

local options = require("utils").load_config().options

ts_config.setup {
   ensure_installed = options.langs,
   highlight = {
      enable = true,
      use_languagetree = true,
   },
}
