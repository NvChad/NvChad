-- https://github.com/ojroques/nvim-osc52
--
require("osc52").setup()

-- local function copy2()
-- 	if vim.v.event.operator == 'y' and vim.v.event.regname == '+' then
-- 		require('osc52').copy_register('+')
-- 	end
-- end
--
-- vim.api.nvim_create_autocmd('TextYankPost', {
-- 	callback = copy2,
-- })

local function copy(lines, _)
	require('osc52').copy(table.concat(lines, '\n'))
end

local function paste()
	return {
		vim.fn.split(vim.fn.getreg(''), '\n'),
		vim.fn.getregtype(''),
	}
end

vim.g.clipboard = {
	name = 'osc52',
	copy = {
		['+'] = copy,
		['*'] = copy,
	},
	paste = {
		['+'] = paste,
		['*'] = paste,
	},
}
