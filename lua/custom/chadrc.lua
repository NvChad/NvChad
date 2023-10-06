local M = {}

M.ui = {
  theme = "chadracula",
  extended_integrations = { "trouble", "dap" },
  telescope = { style = "bordered" },
}

-- custom plugin configs
M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
