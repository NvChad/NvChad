local M = {}

M.load_config = function()
  local config = require "core.default_config"
  local chadrc_path = vim.api.nvim_get_runtime_file("lua/custom/chadrc.lua", false)[1]

  if chadrc_path then
    config = vim.tbl_deep_extend("force", config,  dofile(chadrc_path))
  end

  return config
end

return M
