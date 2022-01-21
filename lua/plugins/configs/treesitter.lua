local present, ts_config = pcall(require, "nvim-treesitter.configs")

if not present then
   return
end

local M = {}

local chad_defaults = {
   ensure_installed = {
      "lua",
      "vim",
   },
   highlight = {
      enable = true,
      use_languagetree = true,
   },
}

M.setup = function (override_flag)
   if override_flag then
      chad_defaults = require("core.utils").tbl_override_req("nvim_treesitter", chad_defaults)
   end
   ts_config.setup(chad_defaults)
end

return M
