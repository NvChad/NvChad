-- autosave.nvim plugin disabled by default
local present, autosave = pcall(require, "autosave")
if not present then
   return
end

autosave.setup {
   enabled = vim.g.auto_save or false, -- takes boolean value from init.lua
   execution_message = "autosaved at : " .. vim.fn.strftime "%H:%M:%S",
   events = { "InsertLeave", "TextChanged" },
   conditions = {
      exists = true,
      filetype_is_not = {},
      modifiable = true,
   },
   clean_command_line_interval = 2500,
   on_off_commands = true,
   write_all_buffers = false,
}
