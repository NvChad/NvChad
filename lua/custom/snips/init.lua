-- this is loaded by M.luasnip function in others.lua file

-- note: this can not be at the of custom/init.lua file because it will spit out this error
-- "/home/mehdi/.config/nvim/lua/custom/snips/init.lua:2: module 'luasnip.loaders.from_snipmate' not found:

require("luasnip.loaders.from_snipmate").lazy_load({paths = {"~/.config/nvim/lua/custom/snips/snippets"}})
require("luasnip.loaders.from_vscode").lazy_load({paths = {"~/.config/nvim/lua/custom/snips/vscode"}})
require("luasnip.loaders.from_lua").lazy_load({paths = {"~/.config/nvim/lua/custom/snips/luasnippets"}})
