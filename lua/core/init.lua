-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
vim.env.PATH = vim.env.PATH .. (is_windows and ";" or ":") .. vim.fn.stdpath "data" .. "/mason/bin"

local new_cmd = vim.api.nvim_create_user_command

new_cmd("CompileNvTheme", function()
  require("base46").load_all_highlights()
end, {})

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
