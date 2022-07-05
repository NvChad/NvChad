local present, truzen = pcall(require, "true-zen")

if not present then
   return
end

local options = {
   ui = {
      top = {
         showtabline = 0,
      },
      left = {
         number = false,
      },
   },
   modes = {
      ataraxis = {
         left_padding = 3,
         right_padding = 3,
         top_padding = 1,
         bottom_padding = 0,
         auto_padding = false,
      },
   },
}

truzen.setup(options)
