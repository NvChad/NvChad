local map_wrapper = require("core.utils").map
local terminal_options = require("chadrc").terminal

local cmd = vim.cmd

-- This is a wrapper function made to disable a plugin mapping from chadrc
-- If keys are nil, false or empty string, then the mapping will be not applied
-- Useful when one wants to use that keymap for any other purpose
local map = function(...)
   local keys = select(2, ...)
   if not keys or keys == "" then
      return
   end
   map_wrapper(...)
end

-- Don't copy the replaced text after pasting in visual mode
map_wrapper("v", "p", "p:let @+=@0<CR>")

-- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
-- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
-- empty mode is same as using :map
-- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour
map_wrapper({ "n", "x", "o" }, "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
map_wrapper({ "n", "x", "o" }, "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })
map_wrapper("", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
map_wrapper("", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })

-- use ESC to turn off search highlighting
map_wrapper("n", "<Esc>", ":noh <CR>")

-- don't yank text on cut ( x )
map_wrapper({ "n", "v" }, "x", '"_x')

-- don't yank text on delete ( dd )
map_wrapper({ "n", "v" }, "d", '"_d')

-- move cursor within insert mode
map("i", "<C-h>", "<Left>")
map("i", "<C-e>", "<End>")
map("i", "<C-l>", "<Right>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
map("i", "<C-a>", "<ESC>^i")

-- navigation between windows
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

map("n", "<leader>x", ":lua require('core.utils').close_buffer() <CR>") -- close buffer
map("n", "<C-c>", ":%y+ <CR>") -- copy whole file content
map("n", "<S-t>", ":enew <CR>") -- new buffer
map("n", "<C-t>b", ":tabnew <CR>") -- new tabs
map("n", "<leader>n", ":set nu! <CR>")
map("n", "<leader>rn", ":set rnu! <CR>") -- relative line numbers
map("n", "<C-s>", ":w <CR>") -- ctrl + s to save file

-- terminal mappings

-- get out of terminal mode
map("t", { "jk" }, "<C-\\><C-n>")

-- hide a term from within terminal mode
map("t", { "JK" }, "<CMD>lua require('nvchad.terminal').hide() <CR>")

-- pick a hidden term
map("n", "<leader>W", ":Telescope terms <CR>")

-- Open terminals
-- TODO this opens on top of an existing vert/hori term, fixme
map(
   { "n", "t" },
   "<leader>h",
   "<CMD>lua require('nvchad.terminal').new_or_toggle('horizontal', "
      .. tostring(terminal_options.window.split_height)
      .. ")<CR>"
)

map(
   { "n", "t" },
   "<leader>v",
   "<CMD>lua require('nvchad.terminal').new_or_toggle('vertical', "
      .. tostring(terminal_options.window.vsplit_width)
      .. ")<CR>"
)

map({ "n", "t" }, "<A-i>", "<CMD>lua require('nvchad.terminal').new_or_toggle('float')<CR>")

-- spawns terminals
map("n", "<A-h>", ":execute 15 .. 'new +terminal' | let b:term_type = 'hori' | startinsert <CR>")
map("n", "<A-v>", ":execute 'vnew +terminal' | let b:term_type = 'vert' | startinsert <CR>")
map("n", "<leader>w", ":execute 'terminal' | let b:term_type = 'wind' | startinsert <CR>")

-- Add Packer commands because we are not loading it at startup
cmd "silent! command PackerClean lua require 'plugins' require('packer').clean()"
cmd "silent! command PackerCompile lua require 'plugins' require('packer').compile()"
cmd "silent! command PackerInstall lua require 'plugins' require('packer').install()"
cmd "silent! command PackerStatus lua require 'plugins' require('packer').status()"
cmd "silent! command PackerSync lua require 'plugins' require('packer').sync()"
cmd "silent! command PackerUpdate lua require 'plugins' require('packer').update()"

-- add NvChadUpdate command and mapping
cmd "silent! command! NvChadUpdate lua require('nvchad').update_nvchad()"
map("n", "<leader>uu", ":NvChadUpdate <CR>")

-- plugin related mappings

local M = {}

M.bufferline = function()
   map("n", "<TAB>", ":BufferLineCycleNext <CR>")
   map("n", "<S-Tab>", ":BufferLineCyclePrev <CR>")
end

M.comment = function()
   map("n", "<leader>/", ":lua require('Comment.api').toggle_current_linewise()<CR>")
   map("v", "<leader>/", ":lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>")
end

M.nvimtree = function()
   map("n", "<C-n>", ":NvimTreeToggle <CR>")
   map("n", "<leader>e", ":NvimTreeFocus <CR>")
end

M.telescope = function()
   map("n", "<leader>fb", ":Telescope buffers <CR>")
   map("n", "<leader>ff", ":Telescope find_files <CR>")
   map("n", "<leader>fa", ":Telescope find_files follow=true no_ignore=true hidden=true <CR>")
   map("n", "<leader>cm", ":Telescope git_commits <CR>")
   map("n", "<leader>gt", ":Telescope git_status <CR>")
   map("n", "<leader>fh", ":Telescope help_tags <CR>")
   map("n", "<leader>fw", ":Telescope live_grep <CR>")
   map("n", "<leader>fo", ":Telescope oldfiles <CR>")
   map("n", "<leader>th", ":Telescope themes <CR>")
end

return M
