vim.api.nvim_set_keymap("n", "<leader>co", ":lua search_dotfiles()<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap(
  "n",
  "<leader>mn",
  ':lua require("telescope.builtin").find_files({ cwd = "/Users/edwinmuraya/Library/CloudStorage/OneDrive-Personal/learning_notes" })<cr>',
  { noremap = true, silent = true }
)
