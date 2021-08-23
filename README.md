<h1 align="center">NvChad</h1> 

<div align="center">
	<a href="https://nvchad.netlify.app/">Home</a>
  <span> • </span>
    	<a href="https://nvchad.netlify.app/getting-started/setup">Install</a>
  <span> • </span>
       	<a href="https://nvchad.netlify.app/contribute">Contribute</a>
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
[![Discord](https://img.shields.io/discord/869557815780470834?color=738adb&label=Discord&logo=discord&logoColor=white&style=flat-square)](https://discord.gg/gADmkJb9Fb)
[![Neovim Minimum Version](https://img.shields.io/badge/Neovim-0.5+-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=white)](https://github.com/neovim/neovim)
[![GitHub Issues](https://img.shields.io/github/issues/siduck76/NvChad.svg?style=flat-square&label=Issues&color=fc0330)](https://github.com/siduck76/NvChad/issues)
[![Last Commit](https://img.shields.io/github/last-commit/siduck76/NvChad.svg?style=flat-square&label=Last%20Commit&color=58eb34)](https://github.com/siduck76/NvChad/pulse) 
	      
  </div>

# Showcase
<img src ="https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/dashboard-nvim.png"><hr>
<img src ="https://cdn.discordapp.com/attachments/610012460828852229/853933487295299584/unknown.png"><hr>
<img src ="https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/initialNvim1.png"><hr>
<img src ="https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/initialNvim.png"><hr>


# Some theme showcases :D

![onedark](https://user-images.githubusercontent.com/59060246/130129880-59ab1ad5-9aa6-4f50-9ddd-d8dde0c16257.png)
![nord](https://user-images.githubusercontent.com/59060246/130129890-c01117df-ac3d-40dd-b95d-2681c2461bb4.png)
![gruvchad](https://user-images.githubusercontent.com/59060246/130129897-a68b1585-f42d-4325-8482-102dd2fe1e9e.png)
![everforest](https://user-images.githubusercontent.com/59060246/130129901-5e582f3e-b776-4d0c-9790-be5ae738b5a8.png)

# Very Very Useful lua plugins used in my config

#### Lspkind-nvim

This tiny plugin adds vscode-like pictograms to neovim built-in lsp completion items:

<kbd><img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/lspkind.png"></kbd><hr>

#### Nvim-tree.lua

fast file tree:

<kbd><img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/nvimtree.png"></kbd><hr>

### Telescope-nvim

A fuzzy file finder, picker, sorter, previewer and much more:
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/tel.png"></kbd>
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/telmedia.png"></kbd><hr>

### Indent-blankline.nvim

adds indentline:
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/blanklineNvim.png"></kbd>

### Galaxyline

fastest statusline plugin I've used so far:
<kbd><img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/statusline.png"></kbd><hr>

### Nvim-bufferline.lua

As a top tabline like thing which lets me handle tabs and buffers like switching , sorting and closing them etc.
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/bufferline.png"></kbd>

### Nvim-web-devicons

Lua fork of vim devicons which lets me change icons of filetypes:
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/image.png"></kbd>

### Nvim-treesitter

Better syntax highlighting for programming languages ( NvChad by default comes with lua/bash treesitter parsers ).

without / with Treesitter:
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/dotfiles/master/rice%20flex/woTree.png"></kbd>

# Credits

- [Elianiva](https://github.com/elianiva) helped me with neovim lua related issues many times, NvChad wouldnt exist without his help at all!
- @lorvethe for making NvChad logo!

# Features

- File navigation with Nvimtree
- Using plugins that are mouse friendly
- Beautiful inbuilt themes
- lazy loading 100% of plugins
- managing tabs, buffers with bufferline
- autosave
- icons on nvimtree, telescope, bufferline/statusline and almost everywhere! with nvim-web-devicons
- minimal status line (galaxyline)
- gitsigns (colored bars for git in my config)
- nvim-lspconfig for nvim-lsp configuration
- lspInstall for installing lsp servers easily
- nvim-compe for autocompletion
- lspkind to show pictograms on autocompletion items
- telescope for file finding, picking, previewing (files and even images)
- nvim-treesitter for syntax highlighting
- nvim-autopairs for autolosing braces and stuffs
- neoformat for prettifying/formatting code
- packer.nvim as package manager
- indent-blankline.Nvim for indentlines
- smooth scrolling
- luasnip for snippet plugin and snip support from VSCode through vsnip supporting custom and predefined snips (friendly-snippets)
- Distraction free modes (modes in which statusline, tabline etc. stuff get disabled so its just the text visible in the buffer similar to goyo.vim)
- Code formatting/prettifying
- gitsigns for git diffs

# Bloat
	
-  To all those who think this is probably bloated, sure it is. Bloat means different to everyone. NvChad has like 30 ~ plugins but that doesn't mean those plugins are compromising neovim's speed, snappiness, or making it slow. No matter how many plugins I'd add on NvChad, it wouldn't compromise speed/snappiness/make it slow or whatever since it uses packer.nvim as plugin manager. packer.nvim lets you lazy load plugins i.e. loading plugins on certain events, mappings, sequentially loading them, etc, thus loading them only when needed. I have lazy loaded all the plugins so most plugins aren't loaded by default, hence not affecting neovim's startup/launch time.

<img src = "https://chadpaste.com/f/kdmxdabxbk.png">

# TODO

It would be nice if NvChad focuses on existing plugins and config before adding new things. Some plugins like whichkey, telescope and treesitter still have basic configs! Also adding new features that'd make NvChad slow or its startup time slow wouldn't be encouraged. If that feature is really needed then it'll be mentioned in the wiki with its config.

- Debloat the config.
- Make NvChad more and more faster (reduce startup time as low as possible).
- Add more themes.

# Try in docker

Try NvChad in a docker container. This will leave your current Neovim configuration untouched. Once you exit Neovim, the image is deleted.

```zsh
  docker run -w /root -it --rm alpine:edge sh -uelic '
    apk add git nodejs neovim ripgrep alpine-sdk --update
    git clone https://github.com/NvChad/NvChad ~/.config/nvim
    nvim -c "autocmd User PackerComplete quitall" -c "PackerSync"
    nvim
    '
```

# Chad contributors

<a href = "https://github.com/NvChad/NvChad/graphs/contributors">
  <img src = "https://contrib.rocks/image?repo=siduck76/NvChad"/>
</a>

## Warning

I get hearings from some plugin devs that nvchad users bring issues on discourse/reddit/matrix/gh repos etc. Please dont do that :/ . Bring NvChad related issues here ONLY and dont ever bother plugin devs, THIS IS A CLEAR WARNING! 😠

## :gift_heart: Support

I (siduck76) would happily accept donations but I would be upset and feel bad since Im not the only one who has worked on NvChad. NvChad has been made possible by many contributors so dividing the donations for just me feels very bad and thanks to all the plugin creators once again :'). If you enjoy using NvChad and would like to show your support truly and show your appreciation to my work then try to be a better you! Help the needy people whenever possible (in real life), do some charity.Be nice to your parents and loved ones.Do not be rude , always try to be helpful / caring to one another, stray animals. Its easier to hate now and harder to care , hate used to be rare but now you see it everywhere. Please be respectful to any software/work done by other people rather than making fun of them. Do not compare software (In a bad way). Im grateful to be even able to use neovim! But cant still be fully happy when I think there are people who barely get food to eat, starve for weeks, dont have access to proper education, comupters, basic health care facilities etc.

The following links are some donation (gofundme) links for supporting needy people. Feel free to donate if you can :

- https://www.gofundme.com/f/WeCareAboutSyria
- https://www.gofundme.com/f/Burundi-Nutrition
- https://charity.gofundme.com/o/en/campaign/feedingyemen
- https://www.gofundme.com/f/6p8ea-give-ghanaian-orphans-the-gift-of-a-ride-to-school
