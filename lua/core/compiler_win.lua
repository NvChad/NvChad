--[[
    Configuration for Windows
    With this nvchad reaches the limit of an ide
    functions to compile and run different program languages --> by josuerom
--]]

function runJava()
    --[[
    -- special section for java 8
    vim.api.nvim_set_keymap('i', '<F1>', '<Esc> :w<CR> :!javac % -d d:\\workspace\\build<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F1>', ':w<CR> :!javac % -d d:\\workspace\\build<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :cd d:\\workspace\\build<CR> :!java %:t:r < d:\\workspace\\sample\\input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :cd d:\\workspace\\build<CR> :!java %:t:r < d:\\workspace\\sample\\input<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd d:\\workspace\\build<CR> :terminal<CR>ijava %:t:r<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd d:\\workspace\\build<CR> :terminal<CR>ijava %:t:r<CR>', {noremap = true})
    -- :!%:t --> returns the name of the file with the extension and without the path
    -- :!%:t:r --> returns the name of the file without the extension and without the path
    -- :!%:h --> returns the path or location where the file is being edited
    --]]

    -- section for java versions greater than 8
    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :!java %:t < d:\\workspace\\sample\\input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :!java %:t < d:\\workspace\\sample\\input<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd %:h<CR> :terminal<CR>ijava ', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd %:h<CR> :terminal<CR>ijava ', {noremap = true})
end

function runCpp()
    vim.api.nvim_set_keymap('i', '<F1>', '<Esc> :w<CR> :!g++ % -o d:\\workspace\\build\\sol.exe -march=native -Wall -Wextra -Wshadow -Wvla -Djosuerom<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F1>', ':w<CR> :!g++ % -o d:\\workspace\\build\\sol.exe -march=native -Wall -Wextra -Wshadow -Wvla -Djosuerom<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :!g++ % -o d:\\workspace\\build\\sol.exe -march=native -Wall -Wextra -Wshadow -Wvla -Djosuerom<CR> :!d:\\workspace\\build\\sol.exe < d:\\workspace\\sample\\input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :!d:\\workspace\\build\\sol.exe < d:\\workspace\\sample\\input<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd d:\\workspace\\build<CR> :terminal<CR>isol.exe<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd d:\\workspace\\build<CR> :terminal<CR>isol.exe<CR>', {noremap = true})
end

function runPython()
    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :!python % < d:\\workspace\\sample\\input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :!python % < d:\\workspace\\sample\\input<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd %:h<CR> :terminal<CR>ipython ', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd %:h<CR> :terminal<CR>ipython ', {noremap = true})
end

function runJsAndTs()
    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :!node %<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :!node %<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd %:h<CR> :terminal<CR>inode ', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd %:h<CR> :terminal<CR>inode ', {noremap = true})
end

function editFileInput()
    vim.api.nvim_set_keymap('i', '<F4>', '<Esc> :w<CR> :e d:\\workspace\\sample\\input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F4>', ':w<CR> :e d:\\workspace\\sample\\input<CR>', {noremap = true})
end

local M = {}

M.run_programs = function()
    -- if you are editing any of these files you can press the keys:
    -- F1 to compile the program
    -- F2 to run the program with input file
    -- F3 to run the program manually
    -- F4 to edit the input file

    vim.api.nvim_command('autocmd BufRead * lua editFileInput()')
    vim.api.nvim_command('autocmd FileType java lua runJava()')
    vim.api.nvim_command('autocmd FileType cpp lua runCpp()')
    --vim.api.nvim_command('autocmd FileType python lua runPython()')
    --vim.api.nvim_command('autocmd FileType javascript,typescript lua runJsAndTs()')

    -- create your own method to compile the language you use
    --vim.api.nvim_command('autocmd FileType <language_name> lua <method_name>')
end

return M