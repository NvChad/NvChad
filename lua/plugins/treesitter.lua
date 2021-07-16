local ts_config
if
    not pcall(
        function()
            ts_config = require "nvim-treesitter.configs"
        end
    )
 then
    return
end

ts_config.setup {
    ensure_installed = {
        "bash",
        "lua"
    },
    highlight = {
        enable = true,
        use_languagetree = true
    }
}
