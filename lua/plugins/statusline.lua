local present1, gl = pcall(require, "galaxyline")
local present2, condition = pcall(require, "galaxyline.condition")
if not (present1 or present2) then
    return
end

local gls = gl.section

gl.short_line_list = {" "}

local left_separator = "" -- or " "
local right_separator = " " -- or ""

local global_theme = "themes/" .. vim.g.nvchad_theme
local colors = require(global_theme)

gls.left[1] = {
    FirstElement = {
        provider = function()
            return "▋"
        end,
        highlight = {colors.nord_blue, colors.nord_blue}
    }
}

gls.left[2] = {
    statusIcon = {
        provider = function()
            return "  "
        end,
        highlight = {colors.statusline_bg, colors.nord_blue},
        separator = right_separator .. " ",
        separator_highlight = {colors.nord_blue, colors.lightbg}
    }
}

gls.left[3] = {
    FileIcon = {
        provider = "FileIcon",
        condition = condition.buffer_not_empty,
        highlight = {colors.white, colors.lightbg}
    }
}

gls.left[4] = {
    FileName = {
        provider = {"FileName"},
        condition = condition.buffer_not_empty,
        highlight = {colors.white, colors.lightbg},
        separator = right_separator,
        separator_highlight = {colors.lightbg, colors.lightbg2}
    }
}

gls.left[5] = {
    current_dir = {
        provider = function()
            local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
            return "  " .. dir_name .. " "
        end,
        highlight = {colors.grey_fg2, colors.lightbg2},
        separator = right_separator,
        separator_highlight = {colors.lightbg2, colors.statusline_bg}
    }
}

local checkwidth = function()
    local squeeze_width = vim.fn.winwidth(0) / 2
    if squeeze_width > 30 then
        return true
    end
    return false
end

gls.left[6] = {
    DiffAdd = {
        provider = "DiffAdd",
        condition = checkwidth,
        icon = "  ",
        highlight = {colors.white, colors.statusline_bg}
    }
}

gls.left[7] = {
    DiffModified = {
        provider = "DiffModified",
        condition = checkwidth,
        icon = "   ",
        highlight = {colors.grey_fg2, colors.statusline_bg}
    }
}

gls.left[8] = {
    DiffRemove = {
        provider = "DiffRemove",
        condition = checkwidth,
        icon = "  ",
        highlight = {colors.grey_fg2, colors.statusline_bg}
    }
}

gls.left[9] = {
    DiagnosticError = {
        provider = "DiagnosticError",
        icon = "  ",
        highlight = {colors.red, colors.statusline_bg}
    }
}

gls.left[10] = {
    DiagnosticWarn = {
        provider = "DiagnosticWarn",
        icon = "  ",
        highlight = {colors.yellow, colors.statusline_bg}
    }
}

gls.right[1] = {
    lsp_status = {
        provider = function()
            local clients = vim.lsp.get_active_clients()
            if next(clients) ~= nil then
                local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
                for _, client in ipairs(clients) do
                    local filetypes = client.config.filetypes
                    if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                        return " " .. "  " .. " LSP"
                    end
                end
                return ""
            else
                return ""
            end
        end,
        highlight = {colors.grey_fg2, colors.statusline_bg}
    }
}

gls.right[2] = {
    GitIcon = {
        provider = function()
            return " "
        end,
        condition = require("galaxyline.condition").check_git_workspace,
        highlight = {colors.grey_fg2, colors.statusline_bg},
        separator = " ",
        separator_highlight = {colors.statusline_bg, colors.statusline_bg}
    }
}

gls.right[3] = {
    GitBranch = {
        provider = "GitBranch",
        condition = require("galaxyline.condition").check_git_workspace,
        highlight = {colors.grey_fg2, colors.statusline_bg}
    }
}

local active_mode = {
    n = {"Normal", colors.red},
    i = {"Insert", colors.dark_purple},
    c = {"Command", colors.pink},
    V = {"Visual", colors.cyan},
    [""] = {"Visual", colors.cyan},
    v = {"Visual", colors.cyan},
    R = {"Replace", colors.orange},
    t = {"Terminal", colors.green}
}

local function mode(m)
    local chad_mode = active_mode[vim.fn.mode()][m]

    if chad_mode == "nil" then
        return active_mode[vim.fn.mode()]["t"]
    else
        return chad_mode
    end
end

gls.right[4] = {
    left_round = {
        provider = function()
            vim.cmd("hi Galaxyleft_round guifg=" .. mode(2))
            return left_separator
        end,
        separator = " ",
        separator_highlight = {colors.statusline_bg, colors.statusline_bg},
        highlight = {"GalaxyViMode", colors.statusline_bg}
    }
}

gls.right[5] = {
    viMode_icon = {
        provider = function()
            vim.cmd("hi GalaxyviMode_icon guibg=" .. mode(2))
            return " "
        end,
        highlight = {colors.statusline_bg, colors.red}
    }
}

gls.right[6] = {
    ViMode = {
        provider = function()
            vim.cmd("hi GalaxyViMode guifg=" .. mode(2))
            return "  " .. mode(1) .. " "
        end,
        highlight = {"GalaxyViMode", colors.lightbg} -- colors.red here will be overriden many times
    }
}

gls.right[7] = {
    some_RoundIcon = {
        provider = function()
            return " "
        end,
        separator = left_separator,
        separator_highlight = {colors.green, colors.lightbg},
        highlight = {colors.lightbg, colors.green}
    }
}

gls.right[8] = {
    line_percentage = {
        provider = function()
            local current_line = vim.fn.line(".")
            local total_line = vim.fn.line("$")

            if current_line == 1 then
                return "  Top "
            elseif current_line == vim.fn.line("$") then
                return "  Bot "
            end
            local result, _ = math.modf((current_line / total_line) * 100)
            return "  " .. result .. "% "
        end,
        highlight = {colors.green, colors.lightbg}
    }
}
