local utils = require "core.utils"

local config = utils.load_config()
local map = utils.map

local user_cmd = vim.api.nvim_create_user_command

local nvChad_options = config.options.nvChad
local terminal_options = config.options.terminal

local mappings = config.mappings

local cmd = vim.cmd

-- This is a wrapper function made to disable a plugin mapping from chadrc
-- If keys are nil, false or empty string, then the mapping will be not applied
-- Useful when one wants to use that keymap for any other purpose

-- Don't copy the replaced text after pasting in visual mode
map("v", "p", "p:let @+=@0<CR>")

-- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
-- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
-- empty mode is same as using :map
-- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour

map({ "n", "x", "o" }, "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
map({ "n", "x", "o" }, "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })
map("", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
map("", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })

-- use ESC to turn off search highlighting
map("n", "<Esc>", ":noh <CR>")

-- don't yank text on cut ( x )
if not nvChad_options.copy_cut then
   map({ "n", "v" }, "x", '"_x')
end

-- don't yank text on delete ( dd )
if not nvChad_options.copy_del then
   map({ "n", "v" }, "d", '"_d')
end

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

map("n", "<leader>x", function()
   require("core.utils").close_buffer()
end) -- close  buffer

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
map("t", { "JK" }, function()
   require("nvchad.terminal").hide()
end)

-- pick a hidden term
map("n", "<leader>W", ":Telescope terms <CR>")

-- TODO this opens on top of an existing vert/hori term, fixme
map({ "n", "t" }, "<leader>h", function()
   require("nvchad.terminal").new_or_toggle("horizontal", terminal_options.window.split_height)
end)

map({ "n", "t" }, "<leader>v", function()
   require("nvchad.terminal").new_or_toggle("vertical", terminal_options.window.vsplit_width)
end)

map({ "n", "t" }, "<A-i>", function()
   require("nvchad.terminal").new_or_toggle "float"
end)

map("n", "<A-h>", ":execute 15 .. 'new +terminal' | let b:term_type = 'hori' | startinsert <CR>")
map("n", "<A-v>", ":execute 'vnew +terminal' | let b:term_type = 'vert' | startinsert <CR>")
map("n", "<leader>w", ":execute 'terminal' | let b:term_type = 'wind' | startinsert <CR>")

-- terminal mappings end --

-- Add Packer commands because we are not loading it at startup

user_cmd("PackerClean", function()
   require "plugins"
   require("packer").clean()
end, {})

user_cmd("PackerCompile", function()
   require "plugins"
   require("packer").compile()
end, {})

user_cmd("PackerInstall", function()
   require "plugins"
   require("packer").install()
end, {})

user_cmd("PackerStatus", function()
   require "plugins"
   require("packer").status()
end, {})

user_cmd("PackerSync", function()
   require "plugins"
   require("packer").sync()
end, {})

user_cmd("PackerUpdate", function()
   require "plugins"
   require("packer").update()
end, {})

-- add NvChadUpdate command and mapping
cmd "silent! command! NvChadUpdate lua require('nvchad').update_nvchad()"
map("n", "<leader>uu", ":NvChadUpdate <CR>")

-- load overriden misc mappings

if mappings.misc ~= nil and type(mappings.misc) == "function" then
   mappings.misc()
end

local M = {}

-- below are all plugin related mappings

M.bufferline = function()
   map("n", "<TAB>", ":BufferLineCycleNext <CR>")
   map("n", "<S-Tab>", ":BufferLineCyclePrev <CR>")
end

M.comment = function()
   map("n", "<leader>/", ":lua require('Comment.api').toggle_current_linewise()<CR>")
   map("v", "<leader>/", ":lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>")
end

M.lspconfig = function()
   -- See `:help vim.lsp.*` for documentation on any of the below functions
   map("n", "gD", function()
      vim.lsp.buf.declaration()
   end)

   map("n", "gd", function()
      vim.lsp.buf.definition()
   end)

   map("n", "K", function()
      vim.lsp.buf.hover()
   end)

   map("n", "gi", function()
      vim.lsp.buf.implementation()
   end)

   map("n", "<C-k>", function()
      vim.lsp.buf.signature_help()
   end)

   map("n", "<space>D", function()
      vim.lsp.buf.type_definition()
   end)

   map("n", "<space>ra", function()
      vim.lsp.buf.rename()
   end)

   map("n", "<space>ca", function()
      vim.lsp.buf.code_action()
   end)

   map("n", "gr", function()
      vim.lsp.buf.references()
   end)

   map("n", "<space>f", function()
      vim.diagnostic.open_float()
   end)

   map("n", "[d", function()
      vim.diagnostic.goto_prev()
   end)

   map("n", "d]", function()
      vim.diagnostic.goto_next()
   end)

   map("n", "<space>q", function()
      vim.diagnostic.setloclist()
   end)

   map("n", "<space>fm", function()
      vim.lsp.buf.formatting()
   end)

   map("n", "<space>wa", function()
      vim.lsp.buf.add_workspace_folder()
   end)

   map("n", "<space>wr", function()
      vim.lsp.buf.remove_workspace_folder()
   end)

   map("n", "<space>wl", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
   end)
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
