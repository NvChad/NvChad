local settings = require("core.utils").load_config().options.nvChad

-- Uncomment this if you want to open nvim with a dir
-- vim.api.nvim_create_autocmd("BufEnter", { command = [[if &buftype != "terminal" | lcd %:p:h | endif]] })

-- Use relative & absolute line numbers in 'n' & 'i' modes respectively
-- vim.api.nvim_create_autocmd("InsertEnter", {
--    callback = function()
--       vim.opt.relativenumber = false
--    end,
-- })
-- vim.api.nvim_create_autocmd("InsertLeave", {
--    callback = function()
--       vim.opt.relativenumber = true
--    end,
-- })

-- Don't show any numbers inside terminals
if not settings.terminal_numbers then
   vim.api.nvim_create_autocmd("TermOpen", {
      pattern = "term://*",
      callback = function()
         vim.opt_local.number = false
         vim.opt_local.relativenumber = false
         vim.cmd [[ setfiletype terminal ]]
      end,
   })
end

-- Don't show status line on certain windows
vim.api.nvim_create_autocmd({ "BufEnter", "BufRead", "BufWinEnter", "FileType", "WinEnter" }, {
   callback = function()
      require("core.utils").hide_statusline()
   end,
})

-- Open a file from its last left off position
-- vim.api.nvim_create_autocmd("BufReadPost", {
--    command = [[ if expand('%:p') !~# '\m/\.git/' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]],
-- })

-- File extension specific tabbing
-- vim.api.nvim_create_autocmd("Filetype", {
--    pattern = "python",
--    callback = function()
--       vim.opt_local.expandtab = true
--       vim.opt_local.tabstop = 4
--       vim.opt_local.shiftwidth = 4
--       vim.opt_local.softtabstop = 4
--    end,
-- })
