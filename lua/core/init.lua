-- add binaries installed by mason.nvim to path
local is_windows = vim.loop.os_uname().sysname == "Windows_NT"
vim.env.PATH = vim.env.PATH .. (is_windows and ";" or ":") .. vim.fn.stdpath "data" .. "/mason/bin"

-- commands
vim.cmd "silent! command! NvChadUpdate lua require('nvchad').update_nvchad()"
vim.cmd "silent! command! NvChadSnapshotCreate lua require('nvchad').snap_create()"
vim.cmd "silent! command! NvChadSnapshotDelete lua require('nvchad').snap_delete()"
vim.cmd "silent! command! NvChadSnapshotCheckout lua require('nvchad').snap_checkout()"

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
autocmd("VimEnter", {
  callback = function()
    vim.cmd "command! -nargs=* -complete=customlist,v:lua.require'packer'.plugin_complete PackerSync lua require('plugins') require('core.utils').packer_sync(<f-args>)"
  end,
})
