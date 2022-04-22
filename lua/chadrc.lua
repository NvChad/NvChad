-- Contains some options of nvchad plugins like base16.lua, extensions etc

local M = {}

M.terminal = {
   numbers = false,
   behavior = {
      close_on_exit = true,
   },
   window = {
      vsplit_ratio = 0.5,
      split_ratio = 0.4,
   },
   location = {
      horizontal = "rightbelow",
      vertical = "rightbelow",
      float = {
         relative = "editor",
         row = 0.3,
         col = 0.25,
         width = 0.5,
         height = 0.4,
         border = "single",
      },
   },
}

M.theme = {
   name = "onedark",
}

return M
