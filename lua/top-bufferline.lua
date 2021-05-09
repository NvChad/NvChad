-- define some colors

local bar_fg = "#565c64"
local activeBuffer_fg = "#c8ccd4"

require "bufferline".setup {
    options = {
        offsets = {{filetype = "NvimTree", text = "Explorer"}},
        buffer_close_icon = "",
        modified_icon = "",
        close_icon = " ",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = true,
        separator_style = "thin",
        mappings = "true"
    },
    -- bar colors!!
    highlights = {
        fill = {
            guifg = bar_fg,
            guibg = "#252931"
        },
        background = {
            guifg = bar_fg,
            guibg = "#252931"
        },
        -- buffer
        buffer_selected = {
            guifg = activeBuffer_fg,
            guibg = "#1e222a",
            gui = "bold"
        },
        buffer_visible = {
            guifg = "#9298a0",
            guibg = "#252931"
        },
        -- tabs over right
        tab = {
            guifg = "#9298a0",
            guibg = "#30343c"
        },
        tab_selected = {
            guifg = "#30343c",
            guibg = "#9298a0"
        },
        tab_close = {
            guifg = "#f9929b",
            guibg = "#252931"
        },
        -- buffer separators
        separator = {
            guifg = "#252931",
            guibg = "#252931"
        },
        separator_selected = {
            guifg = "#1e222a",
            guibg = "#1e222a"
        },
        separator_visible = {
            guifg = "#252931",
            guibg = "#252931"
        },
        indicator_selected = {
            guifg = "#252931",
            guibg = "#252931"
        },
        -- modified files (but not saved)
        modified_selected = {
            guifg = "#A3BE8C",
            guibg = "#1e222a"
        },
        modified_visible = {
            guifg = "#BF616A",
            guibg = "#23272f"
        }
    }
}

local opt = {silent = true}
local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "

-- MAPPINGS
map("n", "<S-t>", [[<Cmd>tabnew<CR>]], opt) -- new tab
map("n", "<S-x>", [[<Cmd>bdelete<CR>]], opt) -- close tab

-- move between tabs
map("n", "<TAB>", [[<Cmd>BufferLineCycleNext<CR>]], opt)
map("n", "<S-TAB>", [[<Cmd>BufferLineCyclePrev<CR>]], opt)
