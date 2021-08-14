local M = {
    ui = {
        theme = "onedark",
        hidden_statusline = {
            -- these are filetypes, not pattern matched
            "NvimTree",
            "toggleterm"
        }
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
        autosave = false,
        enable_insertNav = true -- navigation within insertmode
    },
    -- enable / disable plugins (true for disable)
    plugin_status = {
        -- UI
        nvim_bufferline = false,
        galaxyline = false,
        nvim_colorizer = false,
        dashboard_nvim = false,
        blankline = false,
        truezen_nvim = false,
        better_esc = false,
        -- lsp stuff
        lspkind = false,
        lspsignature = false,
        -- git stuff
        gitsigns = false,
        vim_fugitive = false,
        -- misc
        neoformat = false,
        vim_matchup = false,
        autosave_nvim = false,
        nvim_comment = false,
        neoscroll_nvim = false,
        telescope_media = false
    },
    -- make sure you dont use same keys twice
    mappings = {
        truezen = {
            ataraxisMode = "<leader>zz",
            minimalisticmode = "<leader>zm",
            focusmode = "<leader>zf"
        },
        comment_nvim = {
            comment_toggle = "<leader>/"
        },
        nvimtree = {
            treetoggle = "<C-n>"
        },
        neoformat = {
            format = "<leader>fm"
        },
        dashboard = {
            open = "<leader>db",
            newfile = "<leader>fn",
            bookmarks = "<leader>bm",
            sessionload = "<leader>l",
            sessionsave = "<leader>s"
        },
        telescope = {
            live_grep = "<leader>fw",
            git_status = "<leader>gt",
            git_commits = "<leader>cm",
            find_files = "<leader>ff",
            buffers = "<leader>fb",
            help_tags = "<leader>fh",
            oldfiles = "<leader>fo",
            themes = "<leader>th"
        },
        telescope_media = {
            media_files = "<leader>fp"
        },
        bufferline = {
            new_buffer = "<S-t>",
            newtab = "<C-t>b",
            close = "<S-x>",
            cycleNext = "<TAB>",
            cyclePrev = "<S-Tab>"
        },
        fugitive = {
            Git = "<leader>gs",
            diffget_2 = "<leader>gh",
            diffget_3 = "<leader>gl",
            git_blame = "<leader>gb"
        },
        toggleterm = {
            toggle_window = "<leader>w",
            toggle_vert = "<leader>v",
            toggle_hori = "<leader>h",
            hide_term = "JK"
        },
        insert_nav = {
            forward = "<C-l>",
            backward = "<C-h>",
            top_of_line = "<C-a>",
            end_of_line = "<C-e>",
            prev_line = "<C-j>",
            next_line = "<C-k>"
        },
        misc = {
            esc_Termmode = "jk",
            copywhole_file = "<C-a>",
            toggle_linenr = "<leader>n"
        }
    }
}

return M
