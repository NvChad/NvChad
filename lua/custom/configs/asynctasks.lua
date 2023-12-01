local result = vim.api.nvim_exec(
[[
let g:asyncrun_runner = get(g:, 'asyncrun_runner', {})
let g:asynctasks_term_pos = 'floaterm'
let g:asynctasks_template = '~/.config/nvim/lua/custom/config/tasks_template.ini'
]],
true)
print(result)
