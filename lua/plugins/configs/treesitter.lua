local present, ts_config = pcall(require, "nvim-treesitter.configs")
if not present then
   return
end

ts_config.setup {
   ensure_installed = {
      "lua",
   },
   highlight = {
      enable = true,
      use_languagetree = true,
   },
   context_commentstring = {
      enable = require("core.utils").load_config().plugin_status.comment,
      enable_autocmd = false,
   },
}
