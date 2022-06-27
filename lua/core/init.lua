-- commands
vim.cmd "silent! command! NvChadUpdate lua require('nvchad').update_nvchad()"
vim.cmd "silent! command! NvChadSnapshotCreate lua require('nvchad').snap_create()"
vim.cmd "silent! command! NvChadSnapshotDelete lua require('nvchad').snap_delete()"
vim.cmd "silent! command! NvChadSnapshotCheckout lua require('nvchad').snap_checkout()"

-- autocmds
local autocmd = vim.api.nvim_create_autocmd
local api = vim.api

-- wrap the PackerSync command to warn people before using it in NvChadSnapshots
autocmd("VimEnter", {
   callback = function()
      vim.cmd "command! -nargs=* -complete=customlist,v:lua.require'packer'.plugin_complete PackerSync lua require('core.utils').packer_sync(<f-args>)"
   end,
})

-- Disable statusline in dashboard
autocmd("FileType", {
   pattern = "alpha",
   callback = function()
      vim.opt.laststatus = 0
   end,
})

autocmd("BufUnload", {
   buffer = 0,
   callback = function()
      vim.opt.laststatus = 3
   end,
})

-- Don't auto commenting new lines
autocmd("BufEnter", {
   pattern = "*",
   command = "set fo-=c fo-=r fo-=o",
})

vim.t.bufs = vim.api.nvim_list_bufs()

-- thx to https://github.com/ii14 & stores buffer per tab -> table
autocmd("BufAdd", {
   callback = function(args)
      if vim.t.bufs == nil then
         vim.t.bufs = { args.buf }
      else
         local bufs = vim.t.bufs

         -- check for duplicates
         if not vim.tbl_contains(bufs, args.buf) then
            table.insert(bufs, args.buf)
            vim.t.bufs = bufs
         end
      end
   end,
})

autocmd("BufDelete", {
   callback = function(args)
      for _, tab in ipairs(api.nvim_list_tabpages()) do
         local bufs = vim.t[tab].bufs
         if bufs then
            for i, bufnr in ipairs(bufs) do
               if bufnr == args.buf then
                  table.remove(bufs, i)
                  vim.t[tab].bufs = bufs
                  break
               end
            end
         end
      end
   end,
})

local tabufline_opts = require("core.utils").load_config().ui.tabufline

if tabufline_opts.enabled and tabufline_opts.lazyload then
   require("core.lazy_load").tabufline()
elseif tabufline_opts.enabled then
   vim.opt.showtabline = 2
   vim.opt.tabline = "%!v:lua.require'ui.tabline'.run()"
end
