--[[
    Configuration for Linux and MacOS
    With this nvchad reaches the limit of an ide
    functions to compile and run different program languages --> by josuerom
--]]

function RunJava()
    -- for java versions greater than 8
    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :!java % < ~/workspace/sample/input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :!java % < ~/workspace/sample/input<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd %:h<CR> :terminal<CR>ijava ', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd %:h<CR> :terminal<CR>ijava ', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F4>', '<Esc> :w<CR> :e ~/workspace/sample/input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F4>', ':w<CR> :e ~/workspace/sample/input<CR>', {noremap = true})
end

function RunCpp()
    vim.api.nvim_set_keymap('i', '<F1>', '<Esc> :w<CR> :!g++ % -o ~/workspace/build/sol.out -Wall -Wextra -Wshadow -Wvla -Djosuerom<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F1>', ':w<CR> :!g++ % -o ~/workspace/build/sol.out -Wall -Wextra -Wshadow -Wvla -Djosuerom<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :!g++ % -o ~/workspace/build/sol.out -Wall -Wextra -Wshadow -Wvla -Djosuerom<CR> :!~/workspace/build/sol.out < ~/workspace/sample/input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :!~/workspace/build/sol.out < ~/workspace/sample/input<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd ~/workspace/build<CR> :terminal<CR>i./sol.out<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd ~/workspace/build<CR> :terminal<CR>i./sol.out<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F4>', '<Esc> :w<CR> :e ~/workspace/sample/input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F4>', ':w<CR> :e ~/workspace/sample/input<CR>', {noremap = true})
end

function RunPython()
    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :!python3 % < ~/workspace/sample/input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :!python3 % < ~/workspace/sample/input<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd %:h<CR> :terminal<CR>ipython3 ', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd %:h<CR> :terminal<CR>ipython3 ', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F4>', '<Esc> :w<CR> :e ~/workspace/sample/input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F4>', ':w<CR> :e ~/workspace/sample/input<CR>', {noremap = true})
end

function RunJsAndTs()
    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :!node %<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :!node %<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd %:h<CR> :terminal<CR>inode ', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd %:h<CR> :terminal<CR>inode ', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F4>', '<Esc> :w<CR> :e ~/workspace/sample/input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F4>', ':w<CR> :e ~/workspace/sample/input<CR>', {noremap = true})
end

local M = {}

M.run_programs = function()
    -- if you are editing any of these files you can press the keys:
    -- F1 to compile
    -- F2 to run with input file and
    -- F3 to run it manually from the terminal
    -- F4 to edit the input file

    vim.api.nvim_command('autocmd FileType java lua RunJava()')
    vim.api.nvim_command('autocmd FileType cpp lua RunCpp()')
    --vim.api.nvim_command('autocmd FileType python lua RunPython()')
    --vim.api.nvim_command('autocmd FileType javascript lua RunJsAndTs()')
    --vim.api.nvim_command('autocmd FileType typescript lua RunJsAndTs()')

    -- create your own method to compile your language
    -- vim.api.nvim_command('autocmd FileType <name-file> lua <name-method>')
end

return M