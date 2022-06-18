require "core"
require "core.options"

vim.defer_fn(function()
   require("core.utils").load_mappings()
end, 0)

-- setup packer + plugins
require("core.packer").bootstrap()
require "plugins"

local user_conf, _ = pcall(require, "custom")

if user_conf then
   require "custom"
end
