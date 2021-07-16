local luasnip
if
    not pcall(
        function()
            luasnip = require "luasnip"
        end
    )
 then
    return
end

luasnip.config.set_config(
    {
        history = true,
        updateevents = "TextChanged,TextChangedI"
    }
)
require("luasnip/loaders/from_vscode").load()
