local M = {
    ui = {
        theme = "onedark"
    },
    options = {
        permanent_undo = true,
        ruler = false,
        hidden = true,
        ignorecase = true,
        mouse = "a",
        cmdheight = 1,
        updatetime = 250,
        timeoutlen = 400,
        clipboard = "unnamedplus",
        number = true,
        numberwidth = 2,
        expandtab = true,
        shiftwidth = 2,
        smartindent = true,
        mapleader = " ",
        autosave = false
    },
    -- enable / disable plugins (true for disable)
    plugin_status = {
        better_esc = false,
        nvim_bufferline = false,
        galaxyline = false,
        nvim_colorizer = false,
        lspkind = false,
        lspsignature = false,
        neoformat = false,
        gitsigns = false,
        vim_matchup = false,
        dashboard_nvim = false,
        autosave_nvim = false,
        truezen_nvim = false,
        blankline = false,
        vim_fugitive = false,
        nvim_comment = false,
        neoscroll_nvim = false
    }
}

return M
