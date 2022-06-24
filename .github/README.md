<h1 align="center">NvChad</h1>

<div align="center">
	<a href="https://nvchad.github.io/">Home</a>
  <span> • </span>
    	<a href="https://nvchad.github.io/getting-started/setup">Install</a>
  <span> • </span>
       	<a href="https://nvchad.github.io/contribute">Contribute</a>
  <span> • </span>
	<a href="https://github.com/NvChad/NvChad#gift_heart-support">Support</a>
  <span> • </span>
        <a href="https://nvchad.github.io/Extras">Extras</a>
  <p></p>
</div> 

<div align="center">
 
[![Super Linter](https://img.shields.io/github/workflow/status/NvChad/NvChad/Super-Linter/main?style=flat-square&logo=github&label=Build&color=8DBBE9)]()
<a href="https://github.com/NvChad/NvChad/blob/main/LICENSE"
        ><img
            src="https://img.shields.io/github/license/NvChad/NvChad?style=flat-square&logo=GNU&label=License&color=df967f"
            alt="License"
    />
[![Neovim Minimum Version](https://img.shields.io/badge/Neovim-0.7.0-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=white)](https://github.com/neovim/neovim)
[![GitHub Issues](https://img.shields.io/github/issues/NvChad/NvChad.svg?style=flat-square&label=Issues&color=d77982)](https://github.com/NvChad/NvChad/issues)
[![Discord](https://img.shields.io/discord/869557815780470834?color=738adb&label=Discord&logo=discord&logoColor=white&style=flat-square)](https://discord.gg/gADmkJb9Fb)
[![Matrix](https://img.shields.io/badge/Matrix-40aa8b.svg?style=flat-square&logo=Matrix&logoColor=white)](https://matrix.to/#/#nvchad:matrix.org)
[![Telegram](https://img.shields.io/badge/Telegram-blue.svg?style=flat-square&logo=Telegram&logoColor=white)](https://t.me/DE_WM)

  </div>

## Showcase

<img src="https://github.com/NvChad/nvchad.github.io/blob/src/static/img/screenshots/dashboard.png">
<img src="https://github.com/NvChad/nvchad.github.io/blob/src/static/img/screenshots/main2.png">

( Zoom in the screenshot )

<img src="https://github.com/NvChad/nvchad.github.io/blob/src/static/img/screenshots/main.png"> 
<img src="https://github.com/NvChad/nvchad.github.io/blob/src/static/img/screenshots/rxyhn1.png">

## What is it?

- NvChad is a neovim config written in lua aiming to provide a base configuration with very beautiful UI and blazing fast startuptime (around 0.02 secs ~ 0.07 secs). We tweak UI plugins such as telescope, nvim-tree, bufferline etc well to provide an aesthetic UI experience. 

- Lazy loading is done 93% of the time meaning that plugins will not be loaded by default, they will be loaded only when required also at specific commands, events etc. This lowers the startuptime and it was like 0.07~ secs tested on an old pentium machine 1.4ghz + 4gb ram & HDD.

- NvChad isnt a framework! Its supposed to be used as a "base" config, so users could tweak the defaults well, can also remove the things they dont like in the default config and build their config on top of it. Users can tweak the entire default config while staying in their custom config (lua/custom dir). This is the control center of the user's config and gitignored so the users can stay update to-date with NvChad's latest config (main branch) while still controlling it with their chadrc (file that controls entire custom dir)

## Theme Showcase

<details><summary> <b>Images (Click to expand!)</b></summary>

![main themes](https://github.com/NvChad/nvchad.github.io/blob/src/static/img/screenshots/four_Themes.png)
![radium](https://github.com/NvChad/nvchad.github.io/blob/src/static/img/screenshots/radium1.png)
![radium](https://github.com/NvChad/nvchad.github.io/blob/src/static/img/screenshots/radium2.png)
![radium](https://github.com/NvChad/nvchad.github.io/blob/src/static/img/screenshots/radium3.png)

(Note: these are just 4-5 themes, NvChad has around 27+ themes)
</details>

## UI related plugins used

<details><summary> <b>Images (Click to expand!)</b></summary>

<h3> Nvim-tree.lua </h3>

Fast file tree:

<kbd><img src="https://github.com/NvChad/nvchad.github.io/blob/src/static/img/features/nvimtree.png"></kbd><hr>

<h3> Telescope-nvim </h3>

A fuzzy file finder, picker, sorter, previewer and much more:

<kbd><img src="https://github.com/NvChad/nvchad.github.io/blob/src/static/img/features/tel.png"></kbd><hr>

<h3> Indent-blankline.nvim </h3>

Adds indentline:

<kbd><img src="https://github.com/NvChad/nvchad.github.io/blob/src/static/img/features/blanklineNvim.png"></kbd><hr>

<h3> Our own statusline written from scratch  </h3>

[link](https://github.com/NvChad/NvChad/blob/main/lua/ui/statusline.lua)

<kbd><img src="https://github.com/NvChad/nvchad.github.io/blob/src/static/img/features/statusline.png"></kbd><hr>
<kbd><img src="https://github.com/NvChad/nvchad.github.io/blob/src/static/img/features/statusline_modes.png"></kbd><hr>

<h3> Tabufline (our own pertab bufferline) </h3>

<kbd><img src="https://github.com/NvChad/nvchad.github.io/blob/src/static/img/features/tabufline1.png"></kbd><hr>
<kbd><img src="https://github.com/NvChad/nvchad.github.io/blob/src/static/img/features/tabufline2.png"></kbd><hr>
<kbd><img src="https://github.com/NvChad/nvchad.github.io/blob/src/static/img/features/tabufline3.png"></kbd><hr>

<h3> Nvim-web-devicons </h3>

Lua fork of Vim Devicons which offers more file icon customisability:

<kbd><img src="https://github.com/NvChad/nvchad.github.io/blob/src/static/img/features/devicons.png"></kbd><hr>

<h3> Nvim-treesitter </h3

NeoVim Treesitter configurations and abstraction layer. We mostly use this for syntax highlighting. The pretty syntax highlighting you see in all of our screenshots has gotten possible due to treesitter

</details>

## Plugins list

- Many beautiful themes, theme toggler by [our base46 plugin](https://github.com/NvChad/base46)
- Inbuilt terminal toggling & management with [Nvterm](https://github.com/NvChad/nvterm)
- NvChad updater, hide & unhide terminal buffers with [NvChad extensions](https://github.com/NvChad/extensions)
- File navigation with [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- Managing tabs, buffers with [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- Beautiful and configurable icons with [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- Git diffs and more with [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) 
- NeoVim Lsp configuration with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) and [lsp-installer](https://github.com/williamboman/nvim-lsp-installer/)
- Autocompletion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- File searching, previewing image and text files and more with [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
- Syntax highlighting with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Autoclosing braces and html tags with [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- Indentlines with [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- Useful snippets with [friendly snippets](https://github.com/rafamadriz/friendly-snippets) + [LuaSnip](https://github.com/L3MON4D3/LuaSnip).
- Popup mappings keysheet [whichkey.nvim](https://github.com/folke/which-key.nvim)

## History

- I (@siduck i.e creator of NvChad) in my initial days of learning to program wanted a lightweight IDE for writing code, I had a very low end system which was like 1.4ghz pentium + 4gb ram & HDD. I was into web dev stuff so many suggested me to use vscode but that thing was very heavy on my system, It took more ram than my browser! ( minimal ungoogled chromium ) so I never tried it again, sublime text was nice but the fear of using proprietary software XD for a linux user bugged me a lot. Then I tried doom-emacs which looked pretty but it was slow and I was lost within its docs, I tried lunarvim but too lazy to read the docs. Doom-emacs and lunarvim inspired me to make a config which is the prettiest + very fast and simple.

- I'm decent at ricing i.e customizing system and making it look pretty so I posted my neovim rice on [neovim subreddit](https://www.reddit.com/r/neovim/comments/m3xl4f/neovim_rice/), my neovim-dotfiles github repo blew up and then I had to come up with a name, I was amazed by the chad meme lol so I put NvChad as the name, the chad word in here doesnt literally mean the chad guy but in the sense such as chad linux vs windows i.e meaning superior, best etc. NvChad was made for my personal use but it gained some popularity which inspired me to make a public config i.e config usable by many and less hassle to update as everyone's going to use the same base config (NvChad) with their custom modifications (which are gitignored so that wont mess up), without the custom config stuff users would have to keep a track of every commit and copy paste git diffs to manually update nvchad.
 
## :gift_heart: Support

I'm (@siduck) really very sorry to remove the previous charity links but I had to do it for various reasons. A lot has been going here regarding financial issues and I do need some support if it's possible from your end. I haven't graduated yet and it would be great to earn some stuff as that'd help me with daily minor expenses. If you like NvChad and would like to support & appreciate it via donation then I'll gladly accept it. Dont worry! NvChad will still stay alive & active without your donations! I will remove the sponsor button and re-add the charity links once I get a job, probably a year or two.   

[![kofi](https://img.shields.io/badge/Ko--fi-F16061?style=for-the-badge&logo=ko-fi&logoColor=white)](https://ko-fi.com/siduck)
[![paypal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/siduck76)
[![buymeacoffee](https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/siduck)
[![patreon](https://img.shields.io/badge/Patreon-F96854?style=for-the-badge&logo=patreon&logoColor=white)](https://www.patreon.com/siduck)

## Credits

- [Elianiva](https://github.com/elianiva) helped me with NeoVim Lua related issues many times, NvChad wouldn't exist without his help at all as he helped me in my initial neovim journey!
- @lorvethe for making the beautiful NvChad logo.
