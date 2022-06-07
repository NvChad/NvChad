-- credits to @Malace : https://www.reddit.com/r/neovim/comments/ql4iuj/rename_hover_including_window_title_and/
-- This is modified version of the above snippet

local M = {}

M.open = function()
   local currName = vim.fn.expand "<cword>" .. " "

   local win = require("plenary.popup").create(currName, {
      title = "Renamer",
      style = "minimal",
      borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
      relative = "cursor",
      borderhighlight = "RenamerBorder",
      titlehighlight = "RenamerTitle",
      focusable = true,
      width = 25,
      height = 1,
      line = "cursor+2",
      col = "cursor-1",
   })

   local map_opts = { noremap = true, silent = true }

   vim.cmd "normal w"
   vim.cmd "startinsert"

   vim.api.nvim_buf_set_keymap(0, "i", "<Esc>", "<cmd>stopinsert | q!<CR>", map_opts)
   vim.api.nvim_buf_set_keymap(0, "n", "<Esc>", "<cmd>stopinsert | q!<CR>", map_opts)

   vim.api.nvim_buf_set_keymap(
      0,
      "i",
      "<CR>",
      "<cmd>stopinsert | lua require'ui.renamer'.apply(" .. currName .. "," .. win .. ")<CR>",
      map_opts
   )

   vim.api.nvim_buf_set_keymap(
      0,
      "n",
      "<CR>",
      "<cmd>stopinsert | lua require'ui.renamer'.apply(" .. currName .. "," .. win .. ")<CR>",
      map_opts
   )
end

M.apply = function(curr, win)
   local newName = vim.trim(vim.fn.getline ".")
   vim.api.nvim_win_close(win, true)

   if #newName > 0 and newName ~= curr then
      local params = vim.lsp.util.make_position_params()
      params.newName = newName

      vim.lsp.buf_request(0, "textDocument/rename", params)
   end
end

return M
