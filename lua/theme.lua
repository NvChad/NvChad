vim.g.nvchad_theme = "onedark"

local base16
if
    not pcall(
        function()
            base16 = require "base16"
        end
    )
 then
    return false
else
    base16(base16.themes["onedark"], true)

    -- load bg color before async for smooth transition
    local background = require("themes/" .. vim.g.nvchad_theme).black
    vim.cmd("hi Normal guibg=" .. background)
    return true
end
