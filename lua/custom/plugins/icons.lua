-- neorg icons
local M = {}

M.todo = {
   pending = {
      icon = "",
   },
   uncertain = {
      icon = "?",
   },
   urgent = {
      icon = "",
   },
   on_hold = {
      icon = "",
   },
   cancelled = {
      icon = "",
   },
}

M.list = {
   level_1 = {
      icon = "",
   },

   level_2 = {
      icon = " ",
   },

   level_3 = {
      icon = "  ",
   },

   level_4 = {
      icon = "   ",
   },

   level_5 = {
      icon = "    ",
   },

   level_6 = {
      icon = "     ",
   },
}

M.heading = {
   level_1 = {
      icon = "",
   },

   level_2 = {
      icon = " ",
   },

   level_3 = {
      icon = "  ",
   },

   level_4 = {
      enabled = true,
      icon = "   ﰟ",
   },

   level_5 = {
      icon = "    ▶",
   },

   level_6 = {
      icon = "     ⤷",
   },
}

return M
