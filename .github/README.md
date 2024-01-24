<h1 align="center">NvChad</h1>

<div align="center">
	<a href="https://nvchad.com/">Home</a>
  <span> • </span>
    	<a href="https://nvchad.com/docs/quickstart/install">Install</a>
  <span> • </span>
       	<a href="https://nvchad.com/docs/contribute">Contribute</a>
  <span> • </span>
	<a href="https://github.com/NvChad/NvChad#gift_heart-support">Support</a>
  <span> • </span>
        <a href="https://nvchad.com/docs/features">Features</a>
  <p></p>
</div> 

<div align="center">
 
[![Neovim Minimum Version](https://img.shields.io/badge/Neovim-0.9.0-blueviolet.svg?style=flat-square&logo=Neovim&color=90E59A&logoColor=white)](https://github.com/neovim/neovim)
[![GitHub Issues](https://img.shields.io/github/issues/NvChad/NvChad.svg?style=flat-square&label=Issues&color=d77982)](https://github.com/NvChad/NvChad/issues)
[![Discord](https://img.shields.io/discord/869557815780470834?color=738adb&label=Discord&logo=discord&logoColor=white&style=flat-square)](https://discord.gg/gADmkJb9Fb)
[![Matrix](https://img.shields.io/badge/Matrix-40aa8b.svg?style=flat-square&logo=Matrix&logoColor=white)](https://matrix.to/#/#nvchad:matrix.org)
[![Telegram](https://img.shields.io/badge/Telegram-blue.svg?style=flat-square&logo=Telegram&logoColor=white)](https://t.me/nvchad_tg)

  </div>

**NOTICE** : v2.0 is going to be released in this month. It uses lazy.nvim instead of packer and many new features have been added & performance improvements! working on the [docs](https://github.com/NvChad/nvchad.github.io/pull/118) currently and they will be more welcoming to newbies & would make you understand how nvchad works visually. To test v2.0 do a fresh clone of v2.0 branch ( do know that some of the lazy.nvim options are different from packer, [check](https://github.com/folke/lazy.nvim#packernvim) so you have to update the plugin options in your custom plugins table. )

## Showcase

<img src="https://nvchad.com/features/nvdash.webp">
<img src="https://nvchad.com/banner.webp">

<img src="https://nvchad.com/screenshots/onedark.webp">
<img src="https://nvchad.com/screenshots/rxyhn1.webp">

## What is it?

- NvChad is a Neovim config written in Lua aiming to provide a base configuration with very beautiful UI and blazing fast startuptime (around 0.02 secs ~ 0.07 secs). It tweaks UI plugins such as Telescope, Nvim-Tree, Bufferline, etc well to provide an aesthetic UI experience. 

- Lazy loading is done 93% of the time, meaning that plugins will not be loaded by default, they will be loaded only when required also at specific commands, events etc. This lowers the startuptime.

- NvChad isn't a framework! It's supposed to be used as a "base" config, so users can tweak the defaults well, and also remove the things they don't like in the default config and build their config on top of it. Users can tweak the entire default config while staying in their custom config (lua/custom dir). This is the control center of the user's config and gitignored so the users can stay up-to-date with NvChad's latest config (main branch) while still controlling it with their chadrc (file that controls entire custom dir).


## Theme Showcase

<details><summary> <b>Images (Click to expand!)</b></summary>

![4 themes](https://nvchad.com/screenshots/four_Themes.webp)
![radium 1](https://nvchad.com/screenshots/radium1.webp)
![radium 2](https://nvchad.com/screenshots/radium2.webp)
![radium 3](https://nvchad.com/screenshots/radium3.webp)


(Note: these are just 4-5 themes, NvChad has around 56 themes)
</details>

## UI related plugins used

<details><summary> <b>Images (Click to expand!)</b></summary>

<h3> Nvim-tree.lua </h3>

Fast file tree:

<kbd><img src="https://nvchad.com/features/nvimtree.webp"></kbd>

<h3> Telescope-nvim </h3>

A fuzzy file finder, picker, sorter, previewer and much more:

<kbd><img src="https://nvchad.com/features/telescope.webp"></kbd>

<h3> Our own statusline written from scratch  </h3>

[NvChad UI](https://github.com/NvChad/ui)

<kbd><img src="https://nvchad.com/features/statuslines.webp"></kbd>

<h3> Tabufline (our own pertab bufferline) </h3>

<kbd><img src="https://nvchad.com/features/tabufline.webp"></kbd>
- Here's a [video](https://www.youtube.com/watch?v=V_9iJ96U_k8&ab_channel=siduck) that showcases it.

<h3> NvCheatsheet ( our UI Plugin ) </h3>
<kbd> <img src="https://nvchad.com/features/nvcheatsheet.webp"/></kbd>

</details>

## Plugins list

- Many beautiful themes, theme toggler by our [base46 plugin](https://github.com/NvChad/base46)
- Inbuilt terminal toggling & management with [Nvterm](https://github.com/NvChad/nvterm)
- Lightweight & performant ui plugin with [NvChad UI](https://github.com/NvChad/ui) It provides statusline modules, tabufline ( tabs + buffer manager) , beautiful cheatsheets, NvChad updater, hide & unhide terminal buffers, theme switcher and much more!
- File navigation with [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- Beautiful and configurable icons with [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- Git diffs and more with [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) 
- NeoVim Lsp configuration with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) and [mason.nvim](https://github.com/williamboman/mason.nvim)
- Autocompletion with [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- File searching, previewing image and text files and more with [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim).
- Syntax highlighting with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Autoclosing braces and html tags with [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- Indentlines with [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- Useful snippets with [friendly snippets](https://github.com/rafamadriz/friendly-snippets) + [LuaSnip](https://github.com/L3MON4D3/LuaSnip).
- Popup mappings keysheet [whichkey.nvim](https://github.com/folke/which-key.nvim)

## History

- I (@siduck i.e creator of NvChad) in my initial days of learning to program wanted a lightweight IDE for writing code, but I had a very low end system. I was into web dev stuff so many suggested I used VS Code but it was very heavy on my system, It used a significant amount of my ram so I never used it again, Sublime Text was nice but the fear of using proprietary software as a Linux user bugged me a lot. Then I tried Doom-emacs which looked pretty but it was slow and I was lost within its docs, I tried Lunarvim but I was too lazy to read the docs. Doom-emacs and Lunarvim inspired me to make a config which is the most pretty, very fast and simple.

- I'm decent at ricing i.e customizing system and making it look pretty so I posted my Neovim rice on [neovim subreddit](https://www.reddit.com/r/neovim/comments/m3xl4f/neovim_rice/), my Neovim-dotfiles GitHub repo blew up and then I had to come up with a name. I was amazed by the chad meme so I thought the name NvChad would be a good fit. Chad here doesn't literally refer to the chad guy but in the sense such as Chad Linux vs Windows i.e meaning superior, best etc. NvChad was made for my personal use but it gained some popularity which has inspired me to make a public config i.e config usable by many and less hassle to update as everyone's going to use the same base config (NvChad) with their custom modifications (which are gitignored so that won't mess up), without the custom config stuff users would have to keep a track of every commit and copy paste git diffs to manually update nvchad.
 
## :gift_heart: Support

If you like NvChad and would like to support & appreciate it via donation then I'll gladly accept it. 

[![kofi](https://img.shields.io/badge/Ko--fi-F16061?style=for-the-badge&logo=ko-fi&logoColor=white)](https://ko-fi.com/siduck)
[![paypal](https://img.shields.io/badge/PayPal-00457C?style=for-the-badge&logo=paypal&logoColor=white)](https://paypal.me/siduck13)
[![buymeacoffee](https://img.shields.io/badge/Buy_Me_A_Coffee-FFDD00?style=for-the-badge&logo=buy-me-a-coffee&logoColor=black)](https://www.buymeacoffee.com/siduck)
[![patreon](https://img.shields.io/badge/Patreon-F96854?style=for-the-badge&logo=patreon&logoColor=white)](https://www.patreon.com/siduck)

## Credits

- [Elianiva](https://github.com/elianiva) helped me with NeoVim Lua related issues many times, NvChad wouldn't exist without his help at all as he helped me in my initial neovim journey!
- @lorvethe for making the beautiful NvChad logo.
