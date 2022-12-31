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

new_cmd("NvChadSnapshotCreate", function()
  require("nvchad").snap_create()
end, {})

new_cmd("NvChadSnapshotDelete", function()
  require("nvchad").snap_delete()
end, {})

new_cmd("NvChadSnapshotCheckout", function()
  require("nvchad").snap_checkout()
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

-- wrap the PackerSync command to warn people before using it in NvChadSnapshots
new_cmd("PackerSync", function(opts)
  require "plugins"
  require("core.utils").packer_sync(opts.fargs)
end, {
  bang = true,
  nargs = "*",
  force = true,
  complete = function(arglead, cmdline, cursorpos)
    return require("packer").plugin_complete(arglead, cmdline, cursorpos)
  end
})
