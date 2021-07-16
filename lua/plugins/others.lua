local M = {}

M.colorizer = function()
    local colorizer
    if
        not pcall(
            function()
                colorizer = require("colorizer")
            end
        )
     then
        return
    end

    colorizer.setup()
    vim.cmd("ColorizerReloadAllBuffers")
end

M.comment = function()
    pcall(
        function()
            require("nvim_comment").setup()
        end
    )
end

M.lspkind = function()
    pcall(
        function()
            require("lspkind").init()
        end
    )
end

M.neoscroll = function()
    pcall(
        function()
            require("neoscroll").setup()
        end
    )
end

M.blankline = function()
    vim.g.indentLine_enabled = 1
    vim.g.indent_blankline_char = "▏"

    vim.g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
    vim.g.indent_blankline_buftype_exclude = {"terminal"}

    vim.g.indent_blankline_show_trailing_blankline_indent = false
    vim.g.indent_blankline_show_first_indent_level = false
end

return M
