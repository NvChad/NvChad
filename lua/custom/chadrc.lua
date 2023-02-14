-- Just an example, supposed to be placed in /lua/custom/
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- safe load plugins
-- local plugins_configs_ok, plugins_configs = pcall(require, "custom.plugins")
-- if not plugins_configs_ok then
--   print(plugins_configs)
--   return {}
-- end

M.plugins = require "custom.plugins"
-- installing new plugins
-- M.plugins = vim.tbl_deep_extend("force", M.plugins, plugins_configs.additional_plugins)


-- safe load highlights
local highlights_add_ok, highlights_add = pcall(require, "custom.highlights.highlights_add")
if not highlights_add_ok then
  print(highlights_add)
  return {}
end

local highlights_override_ok, highlights_override = pcall(require, "custom.highlights.highlights_override")
if not highlights_override_ok then
  print(highlights_override)
  return {}
end

-- what is the difference between this M.ui and the ui plugin ("NvChad/ui")? why there are two things about ui?
M.ui = {theme = "darker_one", hl_override = highlights_override, hl_add = highlights_add}
M.mappings = require("custom.mappings")

return M
