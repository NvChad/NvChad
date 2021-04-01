local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- copy any selected text with pressing y
map("", "<leader>c", '"+y')


-- OPEN TERMINALS -- 

-- split term vertically , over the right
map("n", "<C-l>", [[<Cmd>vnew term://bash <CR>]], opt)

-- split term vertically , over the right
map("n", "<C-x>", [[<Cmd> split term://bash | resize 10 <CR>]], opt)
