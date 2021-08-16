local present, icons = pcall(require, "nvim-web-devicons")
if not present then
   return
end

local global_theme = "themes/" .. vim.g.nvchad_theme
local colors = require(global_theme)

icons.setup {
   override = {
      html = {
         icon = "",
         color = colors.baby_pink,
         name = "html",
      },
      css = {
         icon = "",
         color = colors.blue,
         name = "css",
      },
      js = {
         icon = "",
         color = colors.sun,
         name = "js",
      },
      ts = {
         icon = "ﯤ",
         color = colors.teal,
         name = "ts",
      },
      kt = {
         icon = "󱈙",
         color = colors.orange,
         name = "kt",
      },
      png = {
         icon = "",
         color = colors.dark_purple,
         name = "png",
      },
      jpg = {
         icon = "",
         color = colors.dark_purple,
         name = "jpg",
      },
      jpeg = {
         icon = "",
         color = colors.dark_purple,
         name = "jpeg",
      },
      mp3 = {
         icon = "",
         color = colors.white,
         name = "mp3",
      },
      mp4 = {
         icon = "",
         color = colors.white,
         name = "mp4",
      },
      out = {
         icon = "",
         color = colors.white,
         name = "out",
      },
      Dockerfile = {
         icon = "",
         color = colors.cyan,
         name = "Dockerfile",
      },
      rb = {
         icon = "",
         color = colors.pink,
         name = "rb",
      },
      vue = {
         icon = "﵂",
         color = colors.vibrant_green,
         name = "vue",
      },
      py = {
         icon = "",
         color = colors.cyan,
         name = "py",
      },
      toml = {
         icon = "",
         color = colors.blue,
         name = "toml",
      },
      lock = {
         icon = "",
         color = colors.red,
         name = "lock",
      },
      zip = {
         icon = "",
         color = colors.sun,
         name = "zip",
      },
      xz = {
         icon = "",
         color = colors.sun,
         name = "xz",
      },
      deb = {
         icon = "",
         color = colors.cyan,
         name = "deb",
      },
      rpm = {
         icon = "",
         color = colors.orange,
         name = "rpm",
      },
      lua = {
         icon = "",
         color = colors.blue,
         name = "lua",
      },
   },
}
