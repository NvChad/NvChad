-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
vim.env.PATH = vim.env.PATH .. (is_windows and ";" or ":") .. vim.fn.stdpath "data" .. "/mason/bin"

local new_cmd = vim.api.nvim_create_user_command

new_cmd("NvChadUpdate", function()
  require("nvchad").update_nvchad()
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

local sep = vim.loop.os_uname().sysname:find "windows" and "\\" or "/"

vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = vim.fn.glob(
    table.concat({
      vim.fn.stdpath "config",
      "lua",
      "custom",
      "**",
      "*.lua",
    }, sep),
    true,
    true,
    true
  ),

  group = vim.api.nvim_create_augroup("ReloadNvChad", {}),

  callback = function(opts)
    require("plenary.reload").reload_module "base46"
    local file = string
      .gsub(vim.fn.fnamemodify(opts.file, ":r"), vim.fn.stdpath "config" .. sep .. "lua" .. sep, "")
      :gsub(sep, ".")
    require("plenary.reload").reload_module(file)
    require("plenary.reload").reload_module "custom.chadrc"

    local config = require("core.utils").load_config().ui

    vim.opt.statusline = "%!v:lua.require('nvchad_ui.statusline." .. config.statusline.theme .. "').run()"

    require("base46").load_all_highlights()
    -- vim.cmd("redraw!")
  end,
})
