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

autocmd("BufWritePost", {
  pattern = "*lua",
  callback = function()
    local bufname = vim.api.nvim_buf_get_name(0)

    if string.find(bufname, "custom") and string.find(bufname, "lua") then
      require("plenary.reload").reload_module "base46"
      require("base46").load_all_highlights()
    end
  end,
})
