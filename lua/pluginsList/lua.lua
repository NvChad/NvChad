-- check if packer is installed (~/local/share/nvim/site/pack)
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

return require('packer').startup(function()
   use {'wbthomason/packer.nvim', opt = true}
   use { 'kyazdani42/nvim-web-devicons'}
   use { 'kyazdani42/nvim-tree.lua'}
   use { 'hoob3rt/lualine.nvim'}
   use { 'neoclide/coc.nvim' , branch = 'release'}
   use { 'nvim-lua/plenary.nvim'}
   use { 'lewis6991/gitsigns.nvim'}
   use { 'glepnir/galaxyline.nvim'}
   use { 'tweekmonster/startuptime.vim'}
   use { 'akinsho/nvim-bufferline.lua'}
   use { '907th/vim-auto-save'}
   use { 'nvim-treesitter/nvim-treesitter'}
   use { 'chriskempson/base16-vim'}
   use { 'norcalli/nvim-colorizer.lua'}
   use { 'Yggdroot/indentLine'}
   use { 'ryanoasis/vim-devicons'}
   use { 'sbdchd/neoformat'}
end)
