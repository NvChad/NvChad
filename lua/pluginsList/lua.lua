-- check if packer is installed (~/local/share/nvim/site/pack)
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

return require('packer').startup(function()
   use { 'kyazdani42/nvim-web-devicons'}
   use {'neovim/nvim-lspconfig'}
   use {'nvim-lua/completion-nvim'}
   use {'wbthomason/packer.nvim', opt = true}
   use { 'nvim-lua/plenary.nvim'}
   use { 'lewis6991/gitsigns.nvim'}
   use { 'glepnir/galaxyline.nvim'}
   use { 'tweekmonster/startuptime.vim'}
   use { 'akinsho/nvim-bufferline.lua'}
   use { '907th/vim-auto-save'}
   use { 'kyazdani42/nvim-tree.lua'}
   use { 'nvim-treesitter/nvim-treesitter'}
   use { 'chriskempson/base16-vim'}
   use { 'norcalli/nvim-colorizer.lua'}
   use { 'Yggdroot/indentLine'}
   use { 'ryanoasis/vim-devicons'}
end)
