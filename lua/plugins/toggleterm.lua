local present, toggleterm = pcall(require, "toggleterm")
if not present then
   return
end

toggleterm.setup {
   -- size can be a number or function which is passed the current terminal
   size = function(term)
      if term.direction == "horizontal" then
         return 15
      elseif term.direction == "vertical" then
         return vim.o.columns * 0.4
      end
   end,
   -- open_mapping = [[<C-\>]], -- mapping set in mappings.lua
   hide_numbers = true, -- hide the number column in toggleterm buffers
   shade_terminals = false,
   start_in_insert = true,
   -- insert_mappings = true, -- see 'open_mapping', not set on purpose
   -- whether or not the open mapping applies in insert mode
   persist_size = true,
   direction = "vertical",
   close_on_exit = true, -- close the terminal window when the process exits
   -- This field is only relevant if direction is set to 'float'
   float_opts = {
      border = "single",
      winblend = 0,
      highlights = {
         border = "Normal",
         background = "Normal",
      },
   },
}

local Terminal = require("toggleterm.terminal").Terminal

_G.termW = Terminal:new {
   direction = "window",
}

_G.termV = Terminal:new {
   direction = "vertical",
}

_G.termH = Terminal:new {
   direction = "horizontal",
}
