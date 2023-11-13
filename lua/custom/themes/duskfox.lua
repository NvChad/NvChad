-- Credits to original https://github.com/EdenEast/nightfox.nvim
-- This is modified version of it

local M = {}

M.base_30 = {
  white = "#e0def4",
  darker_black = "#1a192c",
  black = "#232136",
  black2 = "#282a3c",
  one_bg = "#2d3340", -- real bg of onedark
  one_bg2 = "#37424d",
  one_bg3 = "#414d59",
  grey = "#555f6a",
  grey_fg = "#606a75",
  grey_fg2 = "#6b757f",
  light_grey = "#767f8a",
  red = "#eb6f92",
  baby_pink = "#f07da2",
  pink = "#e36585",
  line = "#313946",
  green = "#a3be8c",
  vibrant_green = "#86d3a6",
  blue = "#569fba",
  nord_blue = "#65b1cd",
  yellow = "#f6c177",
  sun = "#f9cb8c",
  purple = "#ccbbe1",
  dark_purple = "#c4a7e7",
  teal = "#9ccfd8",
  orange = "#ea9a97",
  cyan = "#a6dae3",
  statusline_bg = "#282a3c",
  lightbg = "#37424d",
  pmenu_bg = "#569fba",
  folder_bg = "#569fba",
}

M.base_16 = {
  base00 = "#232136",
  base01 = "#2d3340",
  base02 = "#37424d",
  base03 = "#414d59",
  base04 = "#555f6a",
  base05 = "#e0def4",
  base06 = "#e2e0f7",
  base07 = "#e4e2f9",
  base08 = "#f07da2",
  base09 = "#ea9a97",
  base0A = "#f6c177",
  base0B = "#a3be8c",
  base0C = "#86d3a6",
  base0D = "#65b1cd",
  base0E = "#c4a7e7",
  base0F = "#e2e0f7",
}

M.polish_hl = {
  ["@field.key"] = { fg = M.base_16.base05 },
  ["@operator"] = { fg = M.base_30.dark_purple },
  ["@keyword"] = { fg = M.base_30.teal },
  ["@parameter"] = { fg = M.base_30.teal },
}

M.type = "dark"

M = require("base46").override_theme(M, "duskfox")

return M
