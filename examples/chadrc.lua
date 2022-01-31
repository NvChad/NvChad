-- This is an example chadrc file , its supposed to be placed in /lua/custom/

-- Will fix Error detected while processing VimEnter Autocommands for "*":
-- Feline needs 'termguicolors' to be enabled to work properly
vim.o.termguicolors = true

-- Displays line numbers
vim.o.number = true                                                                                 

-- Makes line numbers relative to cursor position
vim.o.relativenumber = true
local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "onedark",
}

-- Install plugins
local userPlugins = require "custom.plugins" -- path to table

M.plugins = {
   install = userPlugins,
}

-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event','cmd' fields)
-- see: https://github.com/wbthomason/packer.nvim
-- https://nvchad.github.io/config/walkthrough

return M
