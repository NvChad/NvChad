vim.cmd "silent! command! NvChadUpdate lua require('nvchad').update_nvchad()"

local autocmd = vim.api.nvim_create_autocmd

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
autocmd('BufEnter', {
  pattern = '*',
  command = 'set fo-=c fo-=r fo-=o'
})
