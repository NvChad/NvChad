require "core"
require "core.options"

require("core.utils").load_mappings()

-- setup packer + plugins
require("core.packer").bootstrap()
require "plugins"

pcall(require, "custom")
