local modules = require "ui.statusline.modules"
local user_override = require("core.utils").load_config().ui.statusline.override
modules = vim.tbl_deep_extend("force", modules, user_override)

return {
   run = function()
      return table.concat {
         modules.mode(),
         modules.fileInfo(),
         modules.git(),

         "%=",
         modules.LSP_progress(),
         "%=",

         modules.LSP_Diagnostics(),
         modules.LSP_status() or "",
         modules.cwd(),
         modules.cursor_position(),
      }
   end,
}
