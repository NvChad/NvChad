
local function search_dotfiles()
  require('telescope.builtin').find_files {
    -- exclude Library and Binary from Files
    find_command = { "git", "--git-dir=" .. os.getenv("HOME") .. "/.cfg/.git", "ls-files", "--" , ":!:Lib*", ":!:bin*" }
  }
end

vim.api.nvim_set_keymap('n', '<leader>co', ':lua search_dotfiles()<CR>', {noremap = true, silent = true})

-- Folder is required: Remove once added to dotfiles
local system_notes = os.getenv("HOME").."/.system_notes"
local system_notes_exists = vim.fn.isdirectory(system_notes) == 1
print("dir exist",system_notes_exists)
if not system_notes_exists then
  vim.fn.mkdir(system_notes, "p")
end

vim.api.nvim_set_keymap('n', '<leader>sn', ':lua require("telescope.builtin").find_files({ cwd = "~/.system_notes/" })<cr>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>sn', ':lua require("telescope.builtin").find_files({ cwd = "~/.system_notes/" })<cr>', {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>mn', ':lua require("telescope.builtin").find_files({ cwd = "/Users/edwinmuraya/Library/CloudStorage/OneDrive-Personal/learning_notes" })<cr>', {noremap = true, silent = true})
