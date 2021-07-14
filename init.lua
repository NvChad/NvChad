-- load all plugins
require "pluginList"
require "options"

-- colorscheme related stuff
vim.g.nvchad_theme = "onedark"
local base16 = require "base16"
base16(base16.themes["onedark"], true)

require "highlights"
require "mappings"
require "plugins.bufferline"

require("utils").hideStuff()
