local present, gps = pcall(require, "nvim-gps")

if not present then
   return
end

local icons = require "plugins.configs.lspkind_icons"

local options = {
   depth = 5,

   icons = {
      ["class-name"] = "%#GpsItemKindClass#" .. icons.Class .. "%*" .. " ",
      ["function-name"] = "%#GpsItemKindFunction#" .. icons.Function .. "%*" .. " ",
      ["method-name"] = "%#GpsItemKindMethod#" .. icons.Method .. "%*" .. " ",
      ["container-name"] = "%#GpsItemKindProperty#" .. icons.Object .. "%*" .. " ",
      ["tag-name"] = "%#GpsItemKindKeyword#" .. icons.Tag .. "%*" .. " ",
      ["mapping-name"] = "%#GpsItemKindProperty#" .. icons.Object .. "%*" .. " ",
      ["sequence-name"] = "%GpsItemKindProperty#" .. icons.Array .. "%*" .. " ",
      ["null-name"] = "%GpsItemKindField#" .. icons.Field .. "%*" .. " ",
      ["boolean-name"] = "%GpsItemKindValue#" .. icons.Boolean .. "%*" .. " ",
      ["integer-name"] = "%GpsItemKindValue#" .. icons.Number .. "%*" .. " ",
      ["float-name"] = "%GpsItemKindValue#" .. icons.Number .. "%*" .. " ",
      ["string-name"] = "%GpsItemKindValue#" .. icons.String .. "%*" .. " ",
      ["array-name"] = "%GpsItemKindProperty#" .. icons.Array .. "%*" .. " ",
      ["object-name"] = "%GpsItemKindProperty#" .. icons.Object .. "%*" .. " ",
      ["number-name"] = "%GpsItemKindValue#" .. icons.Number .. "%*" .. " ",
      ["table-name"] = "%GpsItemKindProperty#" .. icons.Table .. "%*" .. " ",
      ["date-name"] = "%GpsItemKindValue#" .. icons.Calendar .. "%*" .. " ",
      ["date-time-name"] = "%GpsItemKindValue#" .. icons.Table .. "%*" .. " ",
      ["inline-table-name"] = "%GpsItemKindProperty#" .. icons.Calendar .. "%*" .. " ",
      ["time-name"] = "%GpsItemKindValue#" .. icons.Watch .. "%*" .. " ",
      ["module-name"] = "%GpsItemKindModule#" .. icons.Module .. "%*" .. " ",
   },
}

options = require("core.utils").load_override(options, "SmiteshP/nvim-gps")

gps.setup(options)
