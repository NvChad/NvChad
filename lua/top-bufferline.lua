-- colors

local bar_fg = "#565c64"
local activeBuffer_fg = "#c8ccd4"

require "bufferline".setup {
    options = {
        buffer_close_icon = "",
        modified_icon = "",
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
            guifg = bar_fg,
            guibg = "#1e222a"
        },
        fill = {
            guifg = bar_fg,
            guibg = "#1e222a"
        },
        -- focused window
        buffer_selected = {
            guifg = activeBuffer_fg,
            guibg = "#353b45",
            gui = "bold"
        },
        separator_selected = {
            guifg = "#353b45",
            guibg = "#353b45"
        },
        -- unfocused opened window
        buffer_visible = {
            guifg = "#9298a0",
            guibg = "#282c34"
        },
        separator_visible = {
            guifg = "#282c34",
            guibg = "#282c34"
        },
        separator = {
            guifg = "#1e222a",
            guibg = "#1e222a"
        },
        indicator_selected = {
            guifg = "#1e222a",
            guibg = "#1e222a"
        },
        modified_selected = {
            guifg = "#d0f5c2",
            guibg = "#353b45"
        }
    }
}

local opt = {silent = true}

local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

--command that adds new buffer and moves to it
map("n", "<S-t>", [[<Cmd>tabnew<CR>]], opt)

--removing a buffer
map("n", "<S-x>", [[<Cmd>bdelete<CR>]], opt)

-- tabnew and tabprev
map("n", "<S-l>", [[<Cmd>BufferLineCycleNext<CR>]], opt)
map("n", "<S-p>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
