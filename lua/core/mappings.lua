local utils = require "core.utils"

local map = utils.map
local cmd = vim.cmd
local user_cmd = vim.api.nvim_create_user_command

-- This is a wrapper function made to disable a plugin mapping from chadrc
-- If keys are nil, false or empty string, then the mapping will be not applied
-- Useful when one wants to use that keymap for any other purpose

-- Don't copy the replaced text after pasting in visual mode
map("v", "p", "p:let @+=@0<CR>")

-- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
-- http<cmd> ://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
-- empty mode is same as using <cmd> :map
-- also don't use g[j|k] when in operator pending mode, so it doesn't alter d, y or c behaviour

map({ "n", "x", "o" }, "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
map({ "n", "x", "o" }, "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })
map("", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true })
map("", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true })

-- use ESC to turn off search highlighting
map("n", "<Esc>", "<cmd> :noh <CR>")

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
end)

map("n", "<C-c>", "<cmd> :%y+ <CR>") -- copy whole file content
map("n", "<S-t>", "<cmd> :enew <CR>") -- new buffer
map("n", "<C-t>b", "<cmd> :tabnew <CR>") -- new tabs
map("n", "<leader>n", "<cmd> :set nu! <CR>")
map("n", "<leader>rn", "<cmd> :set rnu! <CR>") -- relative line numbers
map("n", "<C-s>", "<cmd> :w <CR>") -- ctrl + s to save file

-- terminal mappings

-- get out of terminal mode
map("t", { "jk" }, "<C-\\><C-n>")

-- Add Packer commands because we are not loading it at startup

local packer_cmd = function(callback)
   return function()
      require "plugins"
      require("packer")[callback]()
   end
end

-- snapshot stuff
user_cmd("PackerSnapshot", function(info)
   require "plugins"
   require("packer").snapshot(info.args)
end, { nargs = "+" })

user_cmd("PackerSnapshotDelete", function(info)
   require "plugins"
   require("packer.snapshot").delete(info.args)
end, { nargs = "+" })

user_cmd("PackerSnapshotRollback", function(info)
   require "plugins"
   require("packer").rollback(info.args)
end, { nargs = "+" })

user_cmd("PackerClean", packer_cmd "clean", {})
user_cmd("PackerCompile", packer_cmd "compile", {})
user_cmd("PackerInstall", packer_cmd "install", {})
user_cmd("PackerStatus", packer_cmd "status", {})
user_cmd("PackerSync", packer_cmd "sync", {})
user_cmd("PackerUpdate", packer_cmd "update", {})

-- add NvChadUpdate command and mapping
cmd "silent! command! NvChadUpdate lua require('nvchad').update_nvchad()"
map("n", "<leader>uu", "<cmd> :NvChadUpdate <CR>")

-- load overriden misc mappings
require("core.utils").load_config().mappings.misc()

local M = {}

-- below are all plugin related mappings

M.bufferline = function()
   map("n", "<TAB>", "<cmd> :BufferLineCycleNext <CR>")
   map("n", "<S-Tab>", "<cmd> :BufferLineCyclePrev <CR>")
end

M.comment = function()
   map("n", "<leader>/", "<cmd> :lua require('Comment.api').toggle_current_linewise()<CR>")
   map("v", "<leader>/", "<esc><cmd> :lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>")
end

M.lspconfig = function()
   -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
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

   map("n", "<leader>D", function()
      vim.lsp.buf.type_definition()
   end)

   map("n", "<leader>ra", function()
      vim.lsp.buf.rename()
   end)

   map("n", "<leader>ca", function()
      vim.lsp.buf.code_action()
   end)

   map("n", "gr", function()
      vim.lsp.buf.references()
   end)

   map("n", "<leader>f", function()
      vim.diagnostic.open_float()
   end)

   map("n", "[d", function()
      vim.diagnostic.goto_prev()
   end)

   map("n", "d]", function()
      vim.diagnostic.goto_next()
   end)

   map("n", "<leader>q", function()
      vim.diagnostic.setloclist()
   end)

   map("n", "<leader>fm", function()
      vim.lsp.buf.formatting()
   end)

   map("n", "<leader>wa", function()
      vim.lsp.buf.add_workspace_folder()
   end)

   map("n", "<leader>wr", function()
      vim.lsp.buf.remove_workspace_folder()
   end)

   map("n", "<leader>wl", function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
   end)
end

M.nvimtree = function()
   map("n", "<C-n>", "<cmd> :NvimTreeToggle <CR>")
   map("n", "<leader>e", "<cmd> :NvimTreeFocus <CR>")
end

M.telescope = function()
   map("n", "<leader>fb", "<cmd> :Telescope buffers <CR>")
   map("n", "<leader>ff", "<cmd> :Telescope find_files <CR>")
   map("n", "<leader>fa", "<cmd> :Telescope find_files follow=true no_ignore=true hidden=true <CR>")
   map("n", "<leader>cm", "<cmd> :Telescope git_commits <CR>")
   map("n", "<leader>gt", "<cmd> :Telescope git_status <CR>")
   map("n", "<leader>fh", "<cmd> :Telescope help_tags <CR>")
   map("n", "<leader>fw", "<cmd> :Telescope live_grep <CR>")
   map("n", "<leader>fo", "<cmd> :Telescope oldfiles <CR>")
   map("n", "<leader>th", "<cmd> :Telescope themes <CR>")

   -- pick a hidden term
   map("n", "<leader>W", "<cmd> :Telescope terms <CR>")
end

return M
