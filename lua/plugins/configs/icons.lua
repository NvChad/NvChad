local present, icons = pcall(require, "nvim-web-devicons")
if not present then
   return
end

local default = {
   colors = require("colors").get(),
}

default = {
   override = {
      c = {
         icon = "",
         color = default.colors.blue,
         name = "c",
      },
      css = {
         icon = "",
         color = default.colors.blue,
         name = "css",
      },
      deb = {
         icon = "",
         color = default.colors.cyan,
         name = "deb",
      },
      Dockerfile = {
         icon = "",
         color = default.colors.cyan,
         name = "Dockerfile",
      },
      html = {
         icon = "",
         color = default.colors.baby_pink,
         name = "html",
      },
      jpeg = {
         icon = "",
         color = default.colors.dark_purple,
         name = "jpeg",
      },
      jpg = {
         icon = "",
         color = default.colors.dark_purple,
         name = "jpg",
      },
      js = {
         icon = "",
         color = default.colors.sun,
         name = "js",
      },
      kt = {
         icon = "󱈙",
         color = default.colors.orange,
         name = "kt",
      },
      lock = {
         icon = "",
         color = default.colors.red,
         name = "lock",
      },
      lua = {
         icon = "",
         color = default.colors.blue,
         name = "lua",
      },
      mp3 = {
         icon = "",
         color = default.colors.white,
         name = "mp3",
      },
      mp4 = {
         icon = "",
         color = default.colors.white,
         name = "mp4",
      },
      out = {
         icon = "",
         color = default.colors.white,
         name = "out",
      },
      png = {
         icon = "",
         color = default.colors.dark_purple,
         name = "png",
      },
      py = {
         icon = "",
         color = default.colors.cyan,
         name = "py",
      },
      ["robots.txt"] = {
         icon = "ﮧ",
         color = default.colors.red,
         name = "robots",
      },
      toml = {
         icon = "",
         color = default.colors.blue,
         name = "toml",
      },
      ts = {
         icon = "ﯤ",
         color = default.colors.teal,
         name = "ts",
      },
      ttf = {
         icon = "",
         color = default.colors.white,
         name = "TrueTypeFont",
      },
      rb = {
         icon = "",
         color = default.colors.pink,
         name = "rb",
      },
      rpm = {
         icon = "",
         color = default.colors.orange,
         name = "rpm",
      },
      vue = {
         icon = "﵂",
         color = default.colors.vibrant_green,
         name = "vue",
      },
      woff = {
         icon = "",
         color = default.colors.white,
         name = "WebOpenFontFormat",
      },
      woff2 = {
         icon = "",
         color = default.colors.white,
         name = "WebOpenFontFormat2",
      },
      xz = {
         icon = "",
         color = default.colors.sun,
         name = "xz",
      },
      zip = {
         icon = "",
         color = default.colors.sun,
         name = "zip",
      },
   },
}

local M = {}
M.setup = function(override_flag)
   if override_flag then
      default = require("core.utils").tbl_override_req("nvim_web_devicons", default)
   end
   icons.setup(default)
end

return M
