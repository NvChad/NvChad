local M = {}

-- custom plugin configs
M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

M.ui = {
  theme = "chadracula",
  extended_integrations = { "trouble", "dap" },
  telescope = { style = "bordered" },
  hl_override = {
    Cursor = { bg = "pink" }, -- works
    LspReferenceText = { fg = "#3ba1c5", bg = "#e9f5f9" }, -- works
    -- LspReferenceRead = { fg = "green", bg = "purple" },
    -- LspReferenceWrite = { fg = "green", bg = "lightblue" },
  },
  hl_add = {
    FloatBorder = { fg = "green" }, -- works
    NormalFloat = { fg = "green" }, -- works
    NvimTreeCursorLine = { bg = "lightblue" },
  },
  statusline = {
    -- theme = "default",
    -- ensure column shows
    overriden_modules = function(modules)
      -- check to ensure nvchad.statusline.default is loaded first
      -- if not, return
      if not require "nvchad.statusline.default" then
        return
      end
      local st_modules = require "nvchad.statusline.default"
      local sep_r = " "
      local modes = st_modules.modes

      modes["n"][3] = "  "
      modes["v"][3] = "  "
      modes["i"][3] = "  "
      modes["t"][3] = "  "
      table.insert(
        modules,
        2,
        (function()
          -- path with '/filename.ext' removed:
          local path = vim.api.nvim_buf_get_name(0):match "^.*/"
          -- check if pathe xists
          if not path then
            return
          end

          return "%#St_LspStatus#" .. path -- https://github.com/NvChad/base46/blob/v2.0/lua/base46/integrations/statusline.lua
        end)()
      )
      -- insert line and column at the end of the modules
      table.insert(modules, "Ln %l, %c")

      --from  https://github.com/NvChad/ui/issues/129
      modules[1] = (function()
        local m = vim.api.nvim_get_mode().mode
        local current_mode = "%#" .. modes[m][2] .. "#" .. (modes[m][3] or "  !") .. modes[m][1]
        local right_sep = "%#" .. modes[m][2] .. "Sep" .. "#" .. sep_r

        return current_mode .. right_sep .. "%#ST_EmptySpace#" .. sep_r
      end)()
    end,
  },
}

return M
