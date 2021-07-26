local function map(mode, lhs, rhs, opts)
    local options = {noremap = true, silent = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

-- dont copy any deleted text , this is disabled by default so uncomment the below mappings if you want them
--[[ remove this line

map("n", "dd", [=[ "_dd ]=], opt)
map("v", "dd", [=[ "_dd ]=], opt)
map("v", "x", [=[ "_x ]=], opt)

 this line too ]]
--

-- Don't copy the replaced text after pasting in visual mode
map("v", "p", '"_dP', opt)

-- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
-- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
-- empty mode is same as using :map
map("", "j", 'v:count ? "j" : "gj"', {expr = true})
map("", "k", 'v:count ? "k" : "gk"', {expr = true})
map("", "<Down>", 'v:count ? "j" : "gj"', {expr = true})
map("", "<Up>", 'v:count ? "k" : "gk"', {expr = true})

-- OPEN TERMINALS --
map("n", "<C-l>", ":vnew +terminal | setlocal nobuflisted <CR>", opt) -- term over right
map("n", "<C-x>", ":10new +terminal | setlocal nobuflisted <CR>", opt) --  term bottom
map("n", "<C-t>t", ":<Cmd> terminal <CR>", opt) -- term buffer

-- copy whole file content
map("n", "<C-a>", ":%y+<CR>", opt)

-- toggle numbers
map("n", "<leader>n", ":set nu!<CR>", opt)

-- Truezen.nvim
map("n", "<leader>zz", ":TZAtaraxis<CR>", opt)
map("n", "<leader>zm", ":TZMinimalist<CR>", opt)
map("n", "<leader>zf", ":TZFocus<CR>", opt)

map("n", "<C-s>", ":w <CR>", opt)

-- Commenter Keybinding
map("n", "<leader>/", ":CommentToggle<CR>", opt)
map("v", "<leader>/", ":CommentToggle<CR>", opt)

-- compe stuff
local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col(".") - 1
    if col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
        return true
    else
        return false
    end
end

_G.tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-n>"
    elseif check_back_space() then
        return t "<Tab>"
    else
        return vim.fn["compe#complete"]()
    end
end

_G.s_tab_complete = function()
    if vim.fn.pumvisible() == 1 then
        return t "<C-p>"
    elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
        return t "<Plug>(vsnip-jump-prev)"
    else
        return t "<S-Tab>"
    end
end

function _G.completions()
    local npairs
    if
        not pcall(
            function()
                npairs = require "nvim-autopairs"
            end
        )
     then
        return
    end

    if vim.fn.pumvisible() == 1 then
        if vim.fn.complete_info()["selected"] ~= -1 then
            return vim.fn["compe#confirm"]("<CR>")
        end
    end
    return npairs.check_break_line_char()
end

--  compe mappings
map("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
map("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
map("i", "<CR>", "v:lua.completions()", {expr = true})

-- nvimtree
map("n", "<C-n>", ":NvimTreeToggle<CR>", opt)

-- format code
map("n", "<Leader>fm", ":Neoformat<CR>", opt)

-- dashboard stuff
map("n", "<Leader>db", ":Dashboard<CR>", opt)
map("n", "<Leader>fn", ":DashboardNewFile<CR>", opt)
map("n", "<Leader>bm", ":DashboardJumpMarks<CR>", opt)
map("n", "<C-s>l", ":SessionLoad<CR>", opt)
map("n", "<C-s>s", ":SessionSave<CR>", opt)

-- Telescope
map("n", "<Leader>fw", ":Telescope live_grep<CR>", opt)
map("n", "<Leader>gt", ":Telescope git_status <CR>", opt)
map("n", "<Leader>cm", ":Telescope git_commits <CR>", opt)
map("n", "<Leader>ff", ":Telescope find_files <CR>", opt)
map("n", "<Leader>fp", ":Telescope media_files <CR>", opt)
map("n", "<Leader>fb", ":Telescope buffers<CR>", opt)
map("n", "<Leader>fh", ":Telescope help_tags<CR>", opt)
map("n", "<Leader>fo", ":Telescope oldfiles<CR>", opt)

-- bufferline tab stuff
map("n", "<S-t>", ":enew<CR>", opt) -- new buffer
map("n", "<C-t>b", ":tabnew<CR>", opt) -- new tab
map("n", "<S-x>", ":bd!<CR>", opt) -- close tab

-- move between tabs
map("n", "<TAB>", ":BufferLineCycleNext<CR>", opt)
map("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", opt)

-- use ESC to turn off search highlighting
map("n", "<Esc>", ":noh<CR>", opt)

-- get out of terminal with jk
map("t", "jk", "<C-\\><C-n>", opt)

-- Packer commands till because we are not loading it at startup
vim.cmd("silent! command PackerCompile lua require 'pluginList' require('packer').compile()")
vim.cmd("silent! command PackerInstall lua require 'pluginList' require('packer').install()")
vim.cmd("silent! command PackerStatus lua require 'pluginList' require('packer').status()")
vim.cmd("silent! command PackerSync lua require 'pluginList' require('packer').sync()")
vim.cmd("silent! command PackerUpdate lua require 'pluginList' require('packer').update()")

-- Vim Fugitive
map("n", "<Leader>gs", ":Git<CR>", opt)
map("n", "<Leader>gh", ":diffget //2<CR>", opt)
map("n", "<Leader>gl", ":diffget //3<CR>", opt)
map("n", "<Leader>gb", ":Git blame<CR>", opt)
