<h1 align="center">NvChad</h1> 

<div align="center">
	<a href="https://github.com/siduck76/NvChad/wiki#clone-my-setup">Home</a>
  <span> • </span>
    	<a href="https://github.com/siduck76/NvChad/wiki#clone-my-setup">Install</a>
  <span> • </span>
       	<a href="https://github.com/siduck76/NvChad#contribute">Contribute</a>
  <span> • </span>
	<a href="https://github.com/siduck76/NvChad#gift_heart-support">Support</a>
  <span> • </span>
      	<a href="https://github.com/siduck76/NvChad/wiki/Chad-user-configs">Extras</a>
  <p></p>
</div>

<div align="center">
	
[![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua)]()
	
</div>

<div align="center">
	
[![Super Linter](https://img.shields.io/github/workflow/status/siduck76/NvChad/Super-Linter/main?style=flat-square&logo=github&label=Build&color=green)]()
<a href="https://github.com/siduck76/NvChad"
        ><img
            src="https://img.shields.io/github/repo-size/siduck76/NvChad?style=flat-square&label=Repo"
            alt="GitHub repository size"
    /></a>
      <a href="https://github.com/siduck76/NvChad/blob/main/LICENSE"
        ><img
            src="https://img.shields.io/github/license/siduck76/NvChad?style=flat-square&logo=GNU&label=License"
            alt="License"
    />
[![Gitter](https://img.shields.io/gitter/room/siduck76/NvChad?style=flat-square&logo=gitter&logoColor=white&label=Chat&color=eb34a4)](https://gitter.im/neovim-dotfiles/community?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
[![Neovim Minimum Version](https://img.shields.io/badge/Neovim-0.5+-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=white)](https://github.com/neovim/neovim)
[![GitHub Issues](https://img.shields.io/github/issues/siduck76/NvChad.svg?style=flat-square&label=Issues&color=fc0330)](https://github.com/siduck76/NvChad/issues)
[![Last Commit](https://img.shields.io/github/last-commit/siduck76/NvChad.svg?style=flat-square&label=Last%20Commit&color=58eb34)](https://github.com/siduck76/NvChad/pulse) 
	      
  </div>

<img src ="https://cdn.discordapp.com/attachments/610012460828852229/853933487295299584/unknown.png"><hr>
<img src ="https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/dashboard-nvim.png"><hr>
<img src ="https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/initialNvim1.png"><hr>
<img src ="https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/initialNvim.png"><hr>
<img src ="https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/nvimRice2.png"><hr>

# Very Very Useful lua plugins used in my config

#### Lspkind-nvim

This tiny plugin adds vscode-like pictograms to neovim built-in lsp completion items :

<kbd><img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/lspkind.png"></kbd><hr>

#### Nvim-tree.lua

fast file tree :

<kbd><img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/nvimtree.png"></kbd><hr>

### Telescope-nvim

A fuzzy file finder, picker, sorter, previewer and much more:
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/tel.png"></kbd>
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/telmedia.png"></kbd><hr>

### Indent-blankline.nvim

adds indentline :
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/blanklineNvim.png"></kbd>

### Galaxyline

fastest statusline plugin I've used so far:
<kbd><img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/statusline.png"></kbd><hr>

### Nvim-bufferline.lua

As a top tabline like thing which lets me handle tabs and buffers like switching , sorting and closing them etc.
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/bufferline.png"></kbd>

### Nvim-web-devicons

Lua fork of vim devicons which lets me change icons of filetypes
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/image.png"></kbd>

### Nvim-treesitter

Better syntax highlighting for programming languages ( my config just has html,css,js support for now ).

without / with Treesitter :
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/woTree.png"></kbd>

# Credits

[Elianiva](https://github.com/elianiva) helped me with neovim lua related issues many times, NvChad wouldnt exist without his help at all!

# Features

- File navigation with Nvimtree
- Using plugins that are mouse friendly
- sexy themes
- managing tabs , buffers with bufferline
- autosave
- icons on nvimtree , telescope , bufferline/statusline and almost everywhere! with nvim-web-devicons
- minimal status line ( galaxyline)
- gitsigns (colored bars for git in my config)
- using nvim-lsp
- nvim-lspconfig for nvim-lps configuration
- lspInstall for installing lsp servers easily.
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

- [pre-requisite](https://github.com/siduck76/NvChad/wiki/Lua-guides)
- [config-structure](https://github.com/siduck76/NvChad/wiki#config-structure)
- [mappings](https://github.com/siduck76/NvChad/wiki/mappings)

# TODO

It would be nice if NvChad focuses on existing plugins and config before adding new things , some plugins like whichkey , telescope , treesitter still have basic configs! Also adding new features that'd make NvChad slow or its startuptime slow wouldnt be encouraged , if that feature's really needed then It'll be mentioned in the wiki with its config.

- Debloat the config
- Add more themes.
- Add a theme switcher.
- Preview shortcuts in the form of a pretty [cheatsheet](https://user-images.githubusercontent.com/59060246/122490009-95fd9980-cffe-11eb-9676-78019aa2cd65.png)
- Add a global configuration so it doesnt get hard to update :c

# Contribute

- PR's are always welcomed however NvChad aims to be less bloated and suckless. So PR's regarding existing plugin's enhancement , bug fixes are more encouraged.
- PR's regarding adding new plugins and their configs must be given some thought since NvChad aims to have a minimal config and meant to be used as a "base" neovim config so it will have only a set of important plugins. So adding more and more plugins, making NvChad bloated + slow wont help!.
- NvChad isnt a Framework. NvChad wont keep adding more and more features ( adding new plugins most likely) as requested , no spoonfeeding!! If you think the plugin you want to be added is very useful and many NvChaders would find it useful, then such feature's PR is welcomed!
- But adding specific features like adding config for https://github.com/wakatime/vim-wakatime etc will be added in this https://github.com/siduck76/NvChad/wiki/Chad-user-configs. This lets the user select the things only they want ( from extra configs ) .

## :gift_heart: Support

If you enjoy using NvChad and would like to show your appreciation, you may want to tip me here.

It is never required but always appreciated.

<p align="center">
  <a href="https://www.buymeacoffee.com/siduck7" target="_blank"><img alt="undefined" width="48px" src="https://raw.githubusercontent.com/adi1090x/files/master/other/1.png"></a>
  <a href="https://ko-fi.com/siduck76" target="_blank"><img alt="undefined" width="48px" src="https://raw.githubusercontent.com/adi1090x/files/master/other/2.png"></a>
  <a href="https://www.paypal.com/paypalme/siduck76" target="_blank"><img alt="undefined" width="48px" src="https://raw.githubusercontent.com/adi1090x/files/master/other/3.png"></a>
</p>
