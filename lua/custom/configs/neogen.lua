require("neogen").setup({
  enabled = true,
  input_after_comment = true,
  languages = {}
})

vim.api.nvim_set_keymap(
	"n",
	"<Leader>df",
	":lua require('neogen').generate()<CR>",
	{ noremap = true, silent = true }
)
