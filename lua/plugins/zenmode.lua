-- plugins made by @Pocco81 =)

local M = {}

M.config = function()
    local true_zen = require("true-zen")

    true_zen.setup(
        {
            misc = {
                on_off_commands = false,
                ui_elements_commands = false,
                cursor_by_mode = false,
                before_minimalist_mode_shown = true,
                before_minimalist_mode_hidden = true,
                after_minimalist_mode_shown = true,
                after_minimalist_mode_hidden = true
            },
            ui = {
                bottom = {
                    laststatus = 0,
                    ruler = false,
                    showmode = false,
                    showcmd = false,
                    cmdheight = 1
                },
                top = {
                    showtabline = 0
                },
                left = {
                    number = false,
                    relativenumber = false,
                    signcolumn = "no"
                }
            },
            modes = {
                ataraxis = {
                    left_padding = 37,
                    right_padding = 37,
                    top_padding = 2,
                    bottom_padding = 2,
                    just_do_it_for_me = false,
                    ideal_writing_area_width = 0,
                    keep_default_fold_fillchars = true,
                    custome_bg = "#1e222a"
                },
                focus = {
                    margin_of_error = 5,
                    focus_method = "experimental"
                }
            },
            integrations = {
                galaxyline = true,
                nvim_bufferline = true
            }
        }
    )
end

-- autosave.nvim plugin disabled by default
M.autoSave = function()
    local autosave = require("autosave")

    autosave.setup(
        {
            enabled = vim.g.auto_save, -- takes boolean value from init.lua
            execution_message = "autosaved at : " .. vim.fn.strftime("%H:%M:%S"),
            events = {"InsertLeave", "TextChanged"},
            conditions = {
                exists = true,
                filetype_is_not = {},
                modifiable = true
            },
            write_all_buffers = true,
            on_off_commands = true,
            clean_command_line_interval = 2500
        }
    )
end

return M
