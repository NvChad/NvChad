[![Super-Linter](https://github.com/siduck76/NvChad/actions/workflows/superLinter.yml/badge.svg)](https://github.com/siduck76/NvChad/actions/workflows/superLinter.yml)
[![Gitter](https://badges.gitter.im/neovim-dotfiles/community.svg)](https://gitter.im/neovim-dotfiles/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

An attempt to make neovim (cli version) as functional as an IDE while being very eyecandy.

# Screenshots -

<img src ="https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/dashboard-nvim.png"><hr>
<img src ="https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/initialNvim.png"><hr>
<img src ="https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/nvimRice2.png"><hr>
<img src ="https://cdn.discordapp.com/attachments/610012460828852229/853933487295299584/unknown.png"><hr>

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

### galaxyline -

Galaxyline is a light-weight and Super Fast statusline plugin. Written in Lua.
fastest statusline plugin I've used so far:
<kbd><img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/statusline.png"></kbd><hr>

<hr>

### nvim-bufferline.lua -

As a top bufferline like thing which lets me handle tabs like switching, closing tabs. Written in Lua ;)
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/bufferline.png"></kbd>

<hr>
 
### nvim-web-devicons -
Lua fork of vim devicons which lets me change icons of filetypes
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/image.png"></kbd><hr>
 
### nvim-treesitter 
Tree-sitter, transforms text into a syntax tree. Each time you make a change, only the parts of the code that change need to be parsed. This greatly improves the speed of parsing.
Better syntax highlighting for programming languages ( my config just has html,css,js support for now ).

without / with Treesitter :
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/woTree.png"></kbd>

# Features

- File navigation with Nvimtree
- mouse works
- managing tabs with bufferline
- autosave
- icons on nvimtree , telescope , bufferline/statusline and almost everywhere! with nvim-web-devicons
- minimal status line ( galaxyline)
- gitsigns (colored bars for git in my config)
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

It would be nice if NvChad focuses on existing plugins and config before adding new things , some plugins like whichkey , telescope , treesitter still have basic configs! Also adding new features that'd make NvChad slow or its startuptime slow wouldnt be encouraged , if that feature's really needed then It'll be mentioned in the wiki with its config.

- Debloat the config
- Add more themes.
- Add a theme switcher.
- Add a global configuration so it doesnt get hard to update :c 

# Contact -

- My linux / unix related ricing community: https://t.me/DE_WM (telegram)
- Me: @siduck (telegram)

## :gift_heart:  Tip Jar

If you enjoy using NvChad and would like to show your appreciation, you may want to tip me here.

It is never required but always appreciated.

<p align="center">
  <a href="https://www.buymeacoffee.com/siduck7" target="_blank"><img alt="undefined" width="48px" src="https://raw.githubusercontent.com/adi1090x/files/master/other/1.png"></a>
  <a href="https://ko-fi.com/siduck76" target="_blank"><img alt="undefined" width="48px" src="https://raw.githubusercontent.com/adi1090x/files/master/other/2.png"></a>
  <a href="https://www.paypal.com/paypalme/siduck76" target="_blank"><img alt="undefined" width="48px" src="https://raw.githubusercontent.com/adi1090x/files/master/other/3.png"></a>
</p>
