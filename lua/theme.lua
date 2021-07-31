local chad_theme = require("user_config").ui.theme

vim.g.nvchad_theme = chad_theme
local present2, base16 = pcall(require, "base16")

if present2 then
    base16(base16.themes[chad_theme], true)
    require "highlights"
    return true
else
    return false
end
