local present, neorg = pcall(require, "neorg")

if not present then
   return
end

local icons = require "custom.plugins.icons"

local options = {
   load = {
      ["core.defaults"] = {},

      ["core.presenter"] = {
         config = {
            zen_mode = "truezen",
         },
      },

      ["core.norg.dirman"] = {
         config = {
            workspaces = {
               webdev = "~/Documents/notes/webdev",
               linux = "~/Documents/notes/linux",
               design = "~/Documents/notes/design",
            },
         },
      },

      ["core.norg.concealer"] = {
         config = {
            icons = {
               todo = icons.todo,
               list = icons.list,
               heading = icons.heading,
            },
         },
      },
   },
}

neorg.setup(options)
