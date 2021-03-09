call plug#begin('~/.local/share/nvim/site/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'sbdchd/neoformat'
Plug 'glepnir/galaxyline.nvim'
"Plug 'tweekmonster/startuptime.vim'
Plug 'akinsho/nvim-bufferline.lua'
Plug '907th/vim-auto-save'
Plug 'michalliu/jsruntime.vim'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'chriskempson/base16-vim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'bfrg/vim-cpp-modern'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'Yggdroot/indentLine'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
call plug#end()
