 local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- dont copy any deleted text , this is disabled by default so uncomment the below mappings if you want them!
--[[ remove this line

map("n", "dd", [=[ "_dd ]=], opt)
map("v", "dd", [=[ "_dd ]=], opt)
map("v", "x", [=[ "_x ]=], opt)

 this line too ]]
-- OPEN TERMINALS --
map("n", "<C-l>", [[<Cmd>vnew term://zsh <CR>]], opt) -- term over right
map("n", "<C-x>", [[<Cmd> split term://zsh | resize 10 <CR>]], opt) --  term bottom
map("n", "<C-t>t", [[<Cmd> tabnew | term <CR>]], opt) -- term newtab

-- COPY EVERYTHING --
map("n", "<C-a>", [[ <Cmd> %y+<CR>]], opt)

-- toggle numbers ---
map("n", "<leader>n", [[ <Cmd> set nu!<CR>]], opt)

-- toggle truezen.nvim's ataraxis and minimalist mode
map("n", "<leader>z", [[ <Cmd> TZAtaraxis<CR>]], opt)
map("n", "<leader>m", [[ <Cmd> TZMinimalist<CR>]], opt)

map("n", "<C-s>", [[ <Cmd> w <CR>]], opt)
-- vim.cmd("inoremap jh <Esc>")

-- Commenter Keybinding
map("n", "<leader>c<leader>", ":CommentToggle<CR>", {noremap = true, silent = true})
map("v", "<leader>c<leader>", ":CommentToggle<CR>", {noremap = true, silent = true})

-- CUSTOM SHORTCUTS --
-- WINDOWS SHORTCUTS
map("n", "<M-k>", [[<C-w><Up>]], opt)
map("n", "<M-j>", [[<C-w><Down>]], opt)
map("n", "<M-l>", [[<C-w><Right>]], opt)
map("n", "<M-h>", [[<C-w><Left>]], opt)
-- tabs
map("n", "<leader>tn", [[ <Cmd> tabnew<CR>]], opt)
map("n", "<leader>tc", [[ <Cmd> tabclose<CR>]], opt)
map("n", "<leader>to", [[ <Cmd> tabonly<CR>]], opt)
map("n", "<leader>tf", [[ <Cmd> tabfirst<CR>]], opt)
map("n", "<leader>tl", [[ <Cmd> tablast<CR>]], opt)
map("n", "<leader>tx", [[ <Cmd> tabnext<CR>]], opt)
-- Spell Settings {
map("n", "<F6>",   [[ <Esc><Cmd> setlocal spell spelllang=es<CR>]], opt)
map("n", "<S-F6>", [[ <Esc><Cmd> setlocal nospell<CR>]], opt)
map("n", "<F7>",   [[ <Esc><Cmd> setlocal spell spelllang=en<CR>]], opt)
map("n", "<S-F7>", [[ <Esc><Cmd> setlocal nospell<CR>]], opt)

map("n", "<leader>/", [[ <Cmd> nohlsearch<CR>]], opt)
-- }
-- Achieve a productivity ninja skills
vim.cmd("noremap   <Up>      <NOP>")
vim.cmd("noremap   <Down>    <NOP>")
vim.cmd("noremap   <Left>    <NOP>")
vim.cmd("noremap   <Right>   <NOP>")
