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
    LspReferenceText = { fg = "#ff86d3", bg = "#f1f2f8" }, -- on cursor over text
    LspReferenceRead = { fg = "green", bg = "purple" },
    LspReferenceWrite = { fg = "green", bg = "lightblue" },
  },
  hl_add = {
    FloatBorder = { fg = "green" }, -- works
    NormalFloat = { fg = "green" }, -- works
    NvimTreeCursorLine = { bg = "lightblue" },
  },
  changed_themes = {
    chadracula = {
      base_16 = {
        -- base00 = "#282936",
        -- base01 = "#3a3c4e",
        -- base02 = "#4d4f68",
        -- base03 = "#626483",
        base04 = "#62d6e8",
        -- base05 = "#e9e9f4",
        -- base06 = "#f1f2f8",
        -- base07 = "#f7f7fb",
        -- base08 = "#c197fd",
        base09 = "#ffae56",
        base0A = "#8baae9", --struct names
        -- base0B = "#F1FA8C",
        base0C = "#8BE9FD",
        -- base0D = "#4cf770", -- fn, use, mod keywords
        -- base0E = "#ff86d3",
        -- base0F = "#F8F8F2",
      },
      base_30 = {
        -- white = "#F8F8F2",
        -- darker_black = "#222430",
        -- black = "#282A36", --  nvim bg
        -- black2 = "#2d303e",
        -- one_bg = "#373844", -- real bg of onedark
        -- one_bg2 = "#44475a",
        -- one_bg3 = "#565761",
        -- grey = "#5e5f69",
        -- grey_fg = "#666771",
        -- grey_fg2 = "#6e6f79",
        -- light_grey = "#73747e",
        -- red = "#ff7070",
        -- baby_pink = "#ff86d3",
        -- pink = "#FF79C6",
        -- line = "#3c3d49", -- for lines like vertsplit
        -- green = "#50fa7b",
        -- vibrant_green = "#5dff88",
        nord_blue = "#8b9bcd",
        blue = "#a1b1e3",
        -- yellow = "#F1FA8C",
        -- sun = "#FFFFA5",
        -- purple = "#BD93F9",
        -- dark_purple = "#BD93F9",
        teal = "#92a2d4",
        -- orange = "#FFB86C",
        cyan = "#8BE9FD",
        -- statusline_bg = "#2d2f3b",
        -- lightbg = "#41434f",
        -- pmenu_bg = "#b389ef",
        -- folder_bg = "#BD93F9",
      },
      polish_hl = {
        ["@parameter"] = { fg = "#ff7070" },
        ["@keyword"] = { fg = "#7392e0" }, -- pub, struct, let
        ["@variable"] = { fg = "#08f3f3" },
        ["@field.key"] = { fg = "green" },
        ["@field.value"] = { fg = "#04e93e" },
        ["@keyword.return"] = { fg = "pink" },
        ["@keyword.function"] = { fg = "#e0c173" }, -- fn
        ["@lsp.type.enum"] = { fg = "purple" },
      },
    },
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

      modes["n"][3] = " 󰒂 "
      modes["v"][3] = "  "
      modes["i"][3] = "  "
      modes["t"][3] = "  "
      modes["R"][3] = " 󰓡 "
      modes["r"][3] = " 󰓢 "
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
