local user_map = require("chadrc").mappings
local miscMap = user_map.misc

local M = {}
local cmd = vim.cmd

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
map("n", miscMap.openTerm_right, ":vnew +terminal | setlocal nobuflisted <CR>", opt) -- term over right
map("n", miscMap.openTerm_bottom, ":10new +terminal | setlocal nobuflisted <CR>", opt) --  term bottom
map("n", miscMap.openTerm_currentBuf, ":terminal <CR>", opt) -- term buffer

-- copy whole file content
map("n", miscMap.copywhole_file, ":%y+<CR>", opt)

-- toggle numbers
map("n", miscMap.toggle_linenr, ":set nu!<CR>", opt)

M.truezen = function()
    local m = user_map.truezen

    map("n", m.ataraxisMode, ":TZAtaraxis<CR>", opt)
    map("n", m.minimalisticmode, ":TZMinimalist<CR>", opt)
    map("n", m.focusmode, ":TZFocus<CR>", opt)
end

map("n", "<C-s>", ":w <CR>", opt)

M.comment_nvim = function()
    local m = user_map.comment_nvim.comment_toggle
    map("n", m, ":CommentToggle<CR>", opt)
    map("v", m, ":CommentToggle<CR>", opt)
end

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

M.nvimtree = function()
    local m = user_map.nvimtree.treetoggle

    map("n", m, ":NvimTreeToggle<CR>", opt)
end

M.neoformat = function()
    local m = user_map.neoformat.format
    map("n", m, ":Neoformat<CR>", opt)
end

M.dashboard = function()
    local m = user_map.dashboard

    map("n", m.open, ":Dashboard<CR>", opt)
    map("n", m.newfile, ":DashboardNewFile<CR>", opt)
    map("n", m.bookmarks, ":DashboardJumpMarks<CR>", opt)
    map("n", m.sessionload, ":SessionLoad<CR>", opt)
    map("n", m.sessionsave, ":SessionSave<CR>", opt)
end

M.telescope = function()
    local m = user_map.telescope

    map("n", m.live_grep, ":Telescope live_grep<CR>", opt)
    map("n", m.git_status, ":Telescope git_status <CR>", opt)
    map("n", m.git_commits, ":Telescope git_commits <CR>", opt)
    map("n", m.find_files, ":Telescope find_files <CR>", opt)
    map("n", m.media_files, ":Telescope media_files <CR>", opt)
    map("n", m.buffers, ":Telescope buffers<CR>", opt)
    map("n", m.help_tags, ":Telescope help_tags<CR>", opt)
    map("n", m.oldfiles, ":Telescope oldfiles<CR>", opt)
    map("n", m.themes, ":Telescope themes<CR>", opt)
end

M.bufferline = function()
    local m = user_map.bufferline

    map("n", m.new_buffer, ":enew<CR>", opt) -- new buffer
    map("n", m.newtab, ":tabnew<CR>", opt) -- new tab
    map("n", m.close, ":bd!<CR>", opt) -- close  buffer

    -- move between tabs

    map("n", m.cycleNext, ":BufferLineCycleNext<CR>", opt)
    map("n", m.cyclePrev, ":BufferLineCyclePrev<CR>", opt)
end

-- use ESC to turn off search highlighting
map("n", "<Esc>", ":noh<CR>", opt)

-- get out of terminal with jk
map("t", miscMap.esc_Termmode, "<C-\\><C-n>", opt)

-- Packer commands till because we are not loading it at startup
cmd("silent! command PackerCompile lua require 'pluginList' require('packer').compile()")
cmd("silent! command PackerInstall lua require 'pluginList' require('packer').install()")
cmd("silent! command PackerStatus lua require 'pluginList' require('packer').status()")
cmd("silent! command PackerSync lua require 'pluginList' require('packer').sync()")
cmd("silent! command PackerUpdate lua require 'pluginList' require('packer').update()")

M.fugitive = function()
    local m = user_map.fugitive

    map("n", m.Git, ":Git<CR>", opt)
    map("n", m.diffget_2, ":diffget //2<CR>", opt)
    map("n", m.diffget_3, ":diffget //3<CR>", opt)
    map("n", m.git_blame, ":Git blame<CR>", opt)
end

return M
