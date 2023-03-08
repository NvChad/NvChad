-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
vim.env.PATH = vim.env.PATH .. (is_windows and ";" or ":") .. vim.fn.stdpath "data" .. "/mason/bin"

local new_cmd = vim.api.nvim_create_user_command

new_cmd("NvChadUpdate", function()
  require "nvchad.update"()
end, {})

-- autocmds
local autocmd = vim.api.nvim_create_autocmd

-- dont list quickfix buffers
autocmd("FileType", {
  pattern = "qf",
  callback = function()
    vim.opt_local.buflisted = false
  end,
})

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "chadrc.lua",
  group = vim.api.nvim_create_augroup("ReloadNvChad", {}),

  callback = function()
    local config = require("core.utils").load_config()

    vim.opt.statusline = "%!v:lua.require('nvchad_ui.statusline." .. config.ui.statusline.theme .. "').run()"
    vim.g.nvchad_theme = config.ui.theme
    vim.g.transparency = config.ui.transparency

    -- reload cmp  stuff
    require("plenary.reload").reload_module "plugins.configs.cmp"
    require("cmp").setup(require "plugins.configs.cmp")

    require("base46").load_all_highlights()
  end,
})
