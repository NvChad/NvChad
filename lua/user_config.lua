-- WARN: this file is specially ignored by git
-- Src: https://stackoverflow.com/a/26245961
-- to 'ignore' this file: git update-index --assume-unchanged <file>
-- to un-'ignore' this file: git update-index --no-assume-unchanged <file>

local function map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local options = vim.opt
local g = vim.g

--I want to disable the line numbering for my setup
--options.number = true
