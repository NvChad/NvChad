local present, impatient = pcall(require, "impatient")

if present then
   impatient.enable_profile()
end

require "core"
require "core.utils"
require "core.options"

-- setup packer + plugins
require("core.packer").bootstrap()
require "plugins"

local user_conf, _ = pcall(require, "custom")

if user_conf then
   require "custom"
end
