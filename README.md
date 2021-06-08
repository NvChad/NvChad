[![Super-Linter](https://github.com/siduck76/NvChad/actions/workflows/superLinter.yml/badge.svg)](https://github.com/siduck76/NvChad/actions/workflows/superLinter.yml)

An attempt to make neovim (cli version) as functional as an IDE while being very eyecandy.

# Screenshots -

<img src ="https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/initialNvim.png"><hr>
<kbd><img src ="https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/nvimRice2.png"></kbd><hr>

# Very Useful lua plugins used in my config -

#### lspkind-nvim

This tiny plugin adds vscode-like pictograms to neovim built-in lsp completion items :

<kbd><img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/lspkind.png"></kbd><hr>

#### nvim-tree.lua

fast file tree :

<kbd><img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/nvimtree.png"></kbd><hr>

### telescope-nvim -

A fuzzy file finder, picker, sorter, previewer and much more:
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/tel.png"></kbd>
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/telmedia.png"></kbd><hr>

### indent-blankline.nvim -

adds indentline :
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/blanklineNvim.png"></kbd>

using indenLine plugin on left and blanklineNvim on right

<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/blanklineVSindentline.png"></kbd>

### galaxyline -

fastest statusline plugin I've used so far:
<kbd><img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/statusline.png"></kbd><hr>

### gitsigns.nvim -

Shows git signs of a repo on the signcolumn to indicate diffs/changes etc (needs plenary.nvim)

<hr>

### nvim-bufferline.lua -

As a top bufferline like thing which lets me handle tabs like switching, closing tabs.
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/bufferline.png"></kbd>

<hr>
 
### nvim-web-devicons -
Lua fork of vim devicons which lets me change icons of filetypes
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/image.png"></kbd><hr>
 
### nvim-treesitter 
Better syntax highlighting for programming languages ( my config just has html,css,js support for now ).

without / with Treesitter :
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/woTree.png"></kbd>

### nvim-base16 -

contains a collection of all base16 themes for vim , plugin written in lua (comparison of base16-vim and nvim-base16):

nvim-base16 doesnt even take time to load unlike base16-vim which was eating half of the loadup time! ( the below screenshot was taken and tested on my old pentium laptop , so results might differ)
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/nvim-base16.png"></kbd><hr>

(neovim loads pretty fast on ssds)

<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/nvim-startup.png"></kbd><hr>

# Features

- File navigation with Nvimtree
- mouse works
- managing tabs with bufferline
- autosave
- icons on nvimtree , telescope , bufferline/statusline and almost everywhere! with nvim-web-devicons
- minimal status line ( galaxyline)
- gitsigns (colored bars in my config)
- using nvim-lsp
- nvim-lspconfig for nvim-lps configuration
- nvim-compe for autocompletion
- lspkind to show pictograms on autocompletion items
- telescope for file finding , picking , previewing (files and even images)
- nvim-treesitter for syntax highlighting
- nvim-autopairs , for autolosing braces and stuffs
- neoformat for prettifying / formatting code
- packer.nvim as package manager
- indent-blankline.Nvim for indentlines
- smooth scrolling
- Snip support from VSCode through vsnip supporting custom and predefined snips (friendly-snippets)

# Requirements 

- neovim 0.5
- A terminal that supports [nerdfonts](https://github.com/ryanoasis/nerd-fonts) 
- Set terminal's inner padding to 0.

# Wiki

- [config-structure](https://github.com/siduck76/NvChad/wiki#config-structure)
- [Install](https://github.com/siduck76/NvChad/wiki#clone-my-setup)
- [mappings](https://github.com/siduck76/NvChad/wiki/mappings)

# TODO

- Add more themes.
- Add a theme switcher

# Contact -

- My linux / unix related ricing community: https://t.me/DE_WM (telegram)
- Me: @siduck (telegram)
