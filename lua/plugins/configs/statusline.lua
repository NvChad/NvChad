local colors = require("colors").get()
local lsp = require "feline.providers.lsp"

local icon_styles = {
   default = {
      left = "",
      right = " ",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },
   arrow = {
      left = "",
      right = "",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },

   block = {
      left = " ",
      right = " ",
      main_icon = "   ",
      vi_mode_icon = "   ",
      position_icon = "  ",
   },

   round = {
      left = "",
      right = "",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },

   slant = {
      left = " ",
      right = " ",
      main_icon = "  ",
      vi_mode_icon = " ",
      position_icon = " ",
   },
}

local user_statusline_style = require("core.utils").load_config().ui.plugin.statusline.style
local statusline_style = icon_styles[user_statusline_style]

-- Initialize the components table
local components = {
   left = { active = {}, inactive = {} },
   mid = { active = {}, inactive = {} },
   right = { active = {}, inactive = {} },
}

components.left.active[1] = {
   provider = statusline_style.main_icon,

   hl = {
      fg = colors.statusline_bg,
      bg = colors.nord_blue,
   },

   right_sep = { str = statusline_style.right, hl = {
      fg = colors.nord_blue,
      bg = colors.one_bg2,
   } },
}

components.left.active[2] = {
   provider = statusline_style.right,

   hl = {
      fg = colors.one_bg2,
      bg = colors.lightbg,
   },
}

components.left.active[3] = {
   provider = function()
      local filename = vim.fn.expand "%:t"
      local extension = vim.fn.expand "%:e"
      local icon = require("nvim-web-devicons").get_icon(filename, extension)
      if icon == nil then
         icon = ""
         return icon
      end
      return icon .. " " .. filename .. " "
   end,
   hl = {
      fg = colors.white,
      bg = colors.lightbg,
   },

   right_sep = { str = statusline_style.right, hl = { fg = colors.lightbg, bg = colors.lightbg2 } },
}

components.left.active[4] = {
   provider = function()
      local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
      return " " .. dir_name .. " "
   end,

   hl = {
      fg = colors.grey_fg2,
      bg = colors.lightbg2,
   },
   right_sep = { str = statusline_style.right, hi = {
      fg = colors.lightbg2,
      bg = colors.statusline_bg,
   } },
}

components.left.active[5] = {
   provider = "git_diff_added",
   hl = {
      fg = colors.grey_fg2,
      bg = colors.statusline_bg,
   },
   icon = " ",
}
-- diffModfified
components.left.active[6] = {
   provider = "git_diff_changed",
   hl = {
      fg = colors.grey_fg2,
      bg = colors.statusline_bg,
   },
   icon = "   ",
}
-- diffRemove
components.left.active[7] = {
   provider = "git_diff_removed",
   hl = {
      fg = colors.grey_fg2,
      bg = colors.statusline_bg,
   },
   icon = "  ",
}

components.left.active[8] = {
   provider = "diagnostic_errors",
   enabled = function()
      return lsp.diagnostics_exist "Error"
   end,
   hl = { fg = colors.red },
   icon = "  ",
}

components.left.active[9] = {
   provider = "diagnostic_warnings",
   enabled = function()
      return lsp.diagnostics_exist "Warning"
   end,
   hl = { fg = colors.yellow },
   icon = "  ",
}

components.left.active[10] = {
   provider = "diagnostic_hints",
   enabled = function()
      return lsp.diagnostics_exist "Hint"
   end,
   hl = { fg = colors.grey_fg2 },
   icon = "  ",
}

components.left.active[11] = {
   provider = "diagnostic_info",
   enabled = function()
      return lsp.diagnostics_exist "Information"
   end,
   hl = { fg = colors.green },
   icon = "  ",
}

components.mid.active[1] = {
   provider = function()
      local Lsp = vim.lsp.util.get_progress_messages()[1]
      if Lsp then
         local msg = Lsp.message or ""
         local percentage = Lsp.percentage or 0
         local title = Lsp.title or ""
         local spinners = {
            "󰝦",
            "󰪞",
            "󰪟",
            "󰪠",
            "󰪡",
            "󰪢",
            "󰪣",
            "󰪤",
            "󰪥",
         }

         local ms = vim.loop.hrtime() / 1000000
         local frame = math.floor(ms / 120) % #spinners
         return string.format(" %%<%s %s %s (%s%%%%) ", spinners[frame + 1], title, msg, percentage)
      end

      return ""
   end,
   hl = { fg = colors.green },
}

components.right.active[1] = {
   provider = function()
      local clients = vim.lsp.get_active_clients()
      if next(clients) ~= nil then
         local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
         for _, client in ipairs(clients) do
            local filetypes = client.config.filetypes
            if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
               return " " .. "  " .. " LSP"
            end
         end
         return ""
      else
         return ""
      end
   end,

   hl = { fg = colors.grey_fg2, bg = colors.statusline_bg },
}

components.right.active[2] = {
   provider = "git_branch",
   hl = {
      fg = colors.grey_fg2,
      bg = colors.statusline_bg,
   },
   icon = "  ",
}

components.right.active[3] = {
   provider = " " .. statusline_style.left,
   hl = {
      fg = colors.one_bg2,
      bg = colors.statusline_bg,
   },
}

local mode_colors = {
   ["n"] = { "NORMAL", colors.red },
   ["no"] = { "N-PENDING", colors.red },
   ["i"] = { "INSERT", colors.dark_purple },
   ["ic"] = { "INSERT", colors.dark_purple },
   ["t"] = { "TERMINAL", colors.green },
   ["v"] = { "VISUAL", colors.cyan },
   ["V"] = { "V-LINE", colors.cyan },
   [""] = { "V-BLOCK", colors.cyan },
   ["R"] = { "REPLACE", colors.orange },
   ["Rv"] = { "V-REPLACE", colors.orange },
   ["s"] = { "SELECT", colors.nord_blue },
   ["S"] = { "S-LINE", colors.nord_blue },
   [""] = { "S-BLOCK", colors.nord_blue },
   ["c"] = { "COMMAND", colors.pink },
   ["cv"] = { "COMMAND", colors.pink },
   ["ce"] = { "COMMAND", colors.pink },
   ["r"] = { "PROMPT", colors.teal },
   ["rm"] = { "MORE", colors.teal },
   ["r?"] = { "CONFIRM", colors.teal },
   ["!"] = { "SHELL", colors.green },
}

local chad_mode_hl = function()
   return {
      fg = mode_colors[vim.fn.mode()][2],
      bg = colors.one_bg,
   }
end

components.right.active[4] = {
   provider = statusline_style.left,
   hl = function()
      return {
         fg = mode_colors[vim.fn.mode()][2],
         bg = colors.one_bg2,
      }
   end,
}

components.right.active[5] = {
   provider = statusline_style.vi_mode_icon,
   hl = function()
      return {
         fg = colors.statusline_bg,
         bg = mode_colors[vim.fn.mode()][2],
      }
   end,
}

components.right.active[6] = {
   provider = function()
      return " " .. mode_colors[vim.fn.mode()][1] .. " "
   end,
   hl = chad_mode_hl,
}

components.right.active[7] = {
   provider = statusline_style.left,
   hl = {
      fg = colors.grey,
      bg = colors.one_bg,
   },
}

components.right.active[8] = {
   provider = statusline_style.left,
   hl = {
      fg = colors.green,
      bg = colors.grey,
   },
}

components.right.active[9] = {
   provider = statusline_style.position_icon,
   hl = {
      fg = colors.black,
      bg = colors.green,
   },
}

components.right.active[10] = {
   provider = function()
      local current_line = vim.fn.line "."
      local total_line = vim.fn.line "$"

      if current_line == 1 then
         return " Top "
      elseif current_line == vim.fn.line "$" then
         return " Bot "
      end
      local result, _ = math.modf((current_line / total_line) * 100)
      return " " .. result .. " % "
   end,

   hl = {
      fg = colors.green,
      bg = colors.one_bg,
   },
}

require("feline").setup {
   default_bg = colors.statusline_bg,
   default_fg = colors.fg,
   components = components,
}
