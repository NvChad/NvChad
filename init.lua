require "core"
require "core.options"

require("core.utils").load_mappings()
require("core.packer").bootstrap() -- bootstrap packer & load plugins

pcall(require, "custom")
