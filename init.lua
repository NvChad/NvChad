require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"






--- theme
vim.opt.termguicolors = true




require("visual_studio_code").setup({
  -- `dark` or `light`
  mode = "dark",
  -- Whether to load all color schemes
  preset = true,
  -- Whether to enable background transparency
  transparent = false,
  -- Whether to apply the adapted plugin
  expands = {
      hop = true,
      dbui = true,
      lazy = true,
      aerial = true,
      null_ls = true,
      nvim_cmp = true,
      gitsigns = true,
      which_key = true,
      nvim_tree = true,
      lspconfig = true,
      telescope = true,
      bufferline = true,
      nvim_navic = true,
      nvim_notify = true,
      vim_illuminate = true,
      nvim_treesitter = true,
      nvim_ts_rainbow = true,
      nvim_scrollview = true,
      nvim_ts_rainbow2 = true,
      indent_blankline = true,
      vim_visual_multi = true,
  },
  hooks = {
      before = function(conf, colors, utils) end,
      after = function(conf, colors, utils) end,
  },
})

require("visual_studio_code.utils").hl.set("Normal", { fg = "#000000", bg = "#1E1E2E"})

require("visual_studio_code.utils").hl.link("NormalFloat", "Normal")

require("visual_studio_code.utils").hl.get("Normal", "fg")   -- #000000

require("visual_studio_code.utils").hl.bulk_set({
    Normal = { fg = "#000000", bg = "#1E1E2E"},
    NormalFloat = { link = "Normal" },
    Cursor = { bg = "#0FE1EE", bold = true }
})


require("bufferline").setup({
  options = {
      themable = true,
      close_icon = "",
      custom_areas = {
          right = require("visual_studio_code").get_bufferline_right(),
      },
  }
})