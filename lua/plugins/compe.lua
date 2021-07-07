local M = {}

M.config = function()
    require "compe".setup {
        enabled = true,
        autocomplete = true,
        debug = false,
        min_length = 1,
        preselect = "enable",
        throttle_time = 80,
        source_timeout = 200,
        incomplete_delay = 400,
        max_abbr_width = 100,
        max_kind_width = 100,
        max_menu_width = 100,
        documentation = true,
        source = {
            buffer = {kind = "﬘", true},
            luasnip = {kind = "﬌", true},
            nvim_lsp = true,
            nvim_lua = true
        }
    }
end

M.snippets = function()
    local ls = require("luasnip")

    ls.config.set_config(
        {
            history = true,
            updateevents = "TextChanged,TextChangedI"
        }
    )
    require("luasnip/loaders/from_vscode").load()
end

return M
