vim.o.termguicolors = true

-- colors for active , inactive buffer tabs 
require "bufferline".setup {
    options = {
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 18,
        enforce_regular_tabs = true,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin"
    },
    highlights = {
        background = {
            guifg = comment_fg,
            guibg = "#282c34"
        },
        fill = {
            guifg = comment_fg,
            guibg = "#282c34"
        },
        buffer_selected = {
            guifg = normal_fg,
            guibg = "#3A3E44",
            gui = "bold"
        },
        separator_visible = {
            guifg = "#282c34",
            guibg = "#282c34"
        },
        separator_selected = {
            guifg = "#282c34",
            guibg = "#282c34"
        },
        separator = {
            guifg = "#282c34",
            guibg = "#282c34"
        },
        indicator_selected = {
            guifg = "#282c34",
            guibg = "#282c34"
        },
        modified_selected = {
            guifg = string_fg,
            guibg = "#3A3E44"
        }
    }
}

local opt = {silent = true}

vim.g.mapleader = " "

-- tabnew and tabprev
vim.api.nvim_set_keymap("n", "<Leader>tn", [[<Cmd>BufferLineCycleNext<CR>]], opt)
vim.api.nvim_set_keymap("n", "<Leader>tp", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
