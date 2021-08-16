local present, luasnip = pcall(require, "luasnip")
if not present then
   return
end

local t = function(str)
   return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
   local col = vim.fn.col "." - 1
   if col == 0 or vim.fn.getline("."):sub(col, col):match "%s" then
      return true
   else
      return false
   end
end

_G.tab_complete = function()
   if vim.fn.pumvisible() == 1 then
      return t "<C-n>"
   elseif luasnip and luasnip.expand_or_jumpable() then
      return t "<Plug>luasnip-expand-or-jump"
   elseif check_back_space() then
      return t "<Tab>"
   else
      return vim.fn["compe#complete"]()
   end
end
_G.s_tab_complete = function()
   if vim.fn.pumvisible() == 1 then
      return t "<C-p>"
   elseif luasnip and luasnip.jumpable(-1) then
      return t "<Plug>luasnip-jump-prev"
   else
      return t "<S-Tab>"
   end
end

_G.completions = function()
   local npairs
   if not pcall(function()
      npairs = require "nvim-autopairs"
   end) then
      return
   end

   if vim.fn.pumvisible() == 1 then
      if vim.fn.complete_info()["selected"] ~= -1 then
         return vim.fn["compe#confirm"] "<CR>"
      end
   end
   return npairs.check_break_line_char()
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", { expr = true })
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", { expr = true })
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", { expr = true })
vim.api.nvim_set_keymap("i", "<CR>", "v:lua.completions()", { expr = true })

luasnip.config.set_config {
   history = true,
   updateevents = "TextChanged,TextChangedI",
}
require("luasnip/loaders/from_vscode").load()
