-- Configuration init.lua for Linux
require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"

-- With this nvchad reaches the limit of an ide
-- functions to compile and run different program languages --> by josuerom
function RunJava()
    --[[ -- special section for java 8
    vim.api.nvim_set_keymap('i', '<F1>', '<Esc> :w<CR> :!javac % -d ~/workspace/build<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F1>', ':w<CR> :!javac % -d ~/workspace/build<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :cd ~/workspace/build<CR> :!java %:t:r < ~/workspace/sample/input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :cd ~/workspace/build<CR> :!java %:t:r < ~/workspace/sample/input<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd ~/workspace/build<CR> :terminal<CR>ijava ', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd ~/workspace/build<CR> :terminal<CR>ijava ', {noremap = true})
    --]]

    -- for java versions greater than 8
    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :!java % < ~/workspace/sample/input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :!java % < ~/workspace/sample/input<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd %:h<CR> :terminal<CR>ijava ', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd %:h<CR> :terminal<CR>ijava ', {noremap = true})
end

function RunCpp()
    vim.api.nvim_set_keymap('i', '<F1>', '<Esc> :w<CR> :!g++ % -o ~/workspace/build/sol.out -std=c++20 -Wall -Wextra -Wshadow -Wvla -Djosuerom<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F1>', ':w<CR> :!g++ % -o ~/workspace/build/sol.out -std=c++20 -Wall -Wextra -Wshadow -Wvla -Djosuerom<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :!g++ % -o ~/workspace/build/sol.out -std=c++20 -Wall -Wextra -Wshadow -Wvla -Djosuerom<CR> :!~/workspace/build/sol.out < ~/workspace/sample/input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :!~/workspace/build/sol.out < ~/workspace/sample/input<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd ~/workspace/build<CR> :terminal<CR>isol.out<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd ~/workspace/build<CR> :terminal<CR>isol.out<CR>', {noremap = true})
end

function RunPython()
    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :!python3 % < ~/workspace/sample/input<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :!python3 % < ~/workspace/sample/input<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd %:h<CR> :terminal<CR>ipython3 ', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd %:h<CR> :terminal<CR>ipython3 ', {noremap = true})
end

function RunJsAndTs()
    vim.api.nvim_set_keymap('i', '<F2>', '<Esc> :w<CR> :!node %<CR>', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F2>', ':w<CR> :!node %<CR>', {noremap = true})

    vim.api.nvim_set_keymap('i', '<F3>', '<Esc> :w<CR> :cd %:h<CR> :terminal<CR>inode ', {noremap = true})
    vim.api.nvim_set_keymap('n', '<F3>', ':w<CR> :cd %:h<CR> :terminal<CR>inode ', {noremap = true})
end

-- if you are editing any of these files you can press the keys F1 to compile, F2 to run with input file and F3 to run it manually from the terminal
vim.api.nvim_command('autocmd FileType java lua RunJava()')
vim.api.nvim_command('autocmd FileType cpp lua RunCpp()')
vim.api.nvim_command('autocmd FileType python lua RunPython()')
vim.api.nvim_command('autocmd FileType javascript lua RunJsAndTs()')
vim.api.nvim_command('autocmd FileType typescript lua RunJsAndTs()')

-- create your own method to compile your language
-- vim.api.nvim_command('autocmd FileType <name-file> lua <name-method>')
