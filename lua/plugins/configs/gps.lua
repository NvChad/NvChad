local present, gps = pcall(require, "nvim-gps")

if not present then
   return
end

local icons = require "plugins.configs.lspkind_icons"

local options = {

   icons = {
      ["class-name"] = "%#CmpItemKindClass#" .. icons.Class .. "%*" .. " ",
      ["function-name"] = "%#CmpItemKindFunction#" .. icons.Function .. "%*" .. " ",
      ["method-name"] = "%#CmpItemKindMethod#" .. icons.Method .. "%*" .. " ",
      ["container-name"] = "%#CmpItemKindProperty#" .. icons.Object .. "%*" .. " ",
      ["tag-name"] = "%#CmpItemKindKeyword#" .. icons.Tag .. "%*" .. " ",
      ["mapping-name"] = "%#CmpItemKindProperty#" .. icons.Object .. "%*" .. " ",
      ["sequence-name"] = "%CmpItemKindProperty#" .. icons.Array .. "%*" .. " ",
      ["null-name"] = "%CmpItemKindField#" .. icons.Field .. "%*" .. " ",
      ["boolean-name"] = "%CmpItemKindValue#" .. icons.Boolean .. "%*" .. " ",
      ["integer-name"] = "%CmpItemKindValue#" .. icons.Number .. "%*" .. " ",
      ["float-name"] = "%CmpItemKindValue#" .. icons.Number .. "%*" .. " ",
      ["string-name"] = "%CmpItemKindValue#" .. icons.String .. "%*" .. " ",
      ["array-name"] = "%CmpItemKindProperty#" .. icons.Array .. "%*" .. " ",
      ["object-name"] = "%CmpItemKindProperty#" .. icons.Object .. "%*" .. " ",
      ["number-name"] = "%CmpItemKindValue#" .. icons.Number .. "%*" .. " ",
      ["table-name"] = "%CmpItemKindProperty#" .. icons.Table .. "%*" .. " ",
      ["date-name"] = "%CmpItemKindValue#" .. icons.Calendar .. "%*" .. " ",
      ["date-time-name"] = "%CmpItemKindValue#" .. icons.Table .. "%*" .. " ",
      ["inline-table-name"] = "%CmpItemKindProperty#" .. icons.Calendar .. "%*" .. " ",
      ["time-name"] = "%CmpItemKindValue#" .. icons.Watch .. "%*" .. " ",
      ["module-name"] = "%CmpItemKindModule#" .. icons.Module .. "%*" .. " ",
   },

   ["lua"] = {
      icons = {
         ["container-name"] = "%#CmpItemKindProperty#" .. icons.Table .. "%*" .. " ",
         ["mapping-name"] = "%#CmpItemKindProperty#" .. icons.Table .. "%*" .. " ",
         ["object-name"] = "%CmpItemKindProperty#" .. icons.Table .. "%*" .. " ",
      },
   },
}

gps.setup(options)
