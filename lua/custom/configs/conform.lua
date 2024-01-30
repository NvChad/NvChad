require("conform").setup {
    formatters_by_ft = {
        -- Use file types
        lua = { "stylua" },
        cs = { "csharpier" },
        fs = { "fantomas" },
        fsx = { "fantomas" },
        fsharp = { "fantomas" },
    },
}
