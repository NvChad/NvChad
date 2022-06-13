local present, navic = pcall(require, "nvim-navic")

if not present then
   return
end

local icons = require "plugins.configs.lspkind_icons"

local options = {
   depth = 5,

   icons = {
      ["class-name"] = "%#NavicItemKindClass#" .. icons.Class .. "%*" .. " ",
      ["function-name"] = "%#NavicItemKindFunction#" .. icons.Function .. "%*" .. " ",
      ["method-name"] = "%#NavicItemKindMethod#" .. icons.Method .. "%*" .. " ",
      ["container-name"] = "%#NavicItemKindProperty#" .. icons.Object .. "%*" .. " ",
      ["tag-name"] = "%#NavicItemKindKeyword#" .. icons.Tag .. "%*" .. " ",
      ["mapping-name"] = "%#NavicItemKindProperty#" .. icons.Object .. "%*" .. " ",
      ["sequence-name"] = "%NavicItemKindProperty#" .. icons.Array .. "%*" .. " ",
      ["null-name"] = "%NavicItemKindField#" .. icons.Field .. "%*" .. " ",
      ["boolean-name"] = "%NavicItemKindValue#" .. icons.Boolean .. "%*" .. " ",
      ["integer-name"] = "%NavicItemKindValue#" .. icons.Number .. "%*" .. " ",
      ["float-name"] = "%NavicItemKindValue#" .. icons.Number .. "%*" .. " ",
      ["string-name"] = "%NavicItemKindValue#" .. icons.String .. "%*" .. " ",
      ["array-name"] = "%NavicItemKindProperty#" .. icons.Array .. "%*" .. " ",
      ["object-name"] = "%NavicItemKindProperty#" .. icons.Object .. "%*" .. " ",
      ["number-name"] = "%NavicItemKindValue#" .. icons.Number .. "%*" .. " ",
      ["table-name"] = "%NavicItemKindProperty#" .. icons.Table .. "%*" .. " ",
      ["date-name"] = "%NavicItemKindValue#" .. icons.Calendar .. "%*" .. " ",
      ["date-time-name"] = "%NavicItemKindValue#" .. icons.Table .. "%*" .. " ",
      ["inline-table-name"] = "%NavicItemKindProperty#" .. icons.Calendar .. "%*" .. " ",
      ["time-name"] = "%NavicItemKindValue#" .. icons.Watch .. "%*" .. " ",
      ["module-name"] = "%NavicItemKindModule#" .. icons.Module .. "%*" .. " ",
   },
}

options = require("core.utils").load_override(options, "SmiteshP/nvim-navic")

navic.setup(options)
