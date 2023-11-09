
local function search_dotfiles()
  require('telescope.builtin').find_files {
    -- exclude Library and Binary from Files
    find_command = { "git", "--git-dir=" .. os.getenv("HOME") .. "/.cfg/.git", "ls-files", "--" , ":!:Lib*", ":!:bin*" }
  }
end

vim.api.nvim_set_keymap('n', '<leader>co', ':lua search_dotfiles()<CR>', {noremap = true, silent = true})


vim.api.nvim_set_keymap('n', '<leader>mn', ':lua require("telescope.builtin").find_files({ cwd = "/Users/edwinmuraya/Library/CloudStorage/OneDrive-Personal/learning_notes" })<cr>', {noremap = true, silent = true})
