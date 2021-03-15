
The config is complete but still work in progress as I am new to lua and slowly learning vim stuffs. I'll keep adding new features like snippets etc and clean the config ,  make neovim (cli version) as functional as an IDE while being eyecandy.

# Screenshots -

<img src ="https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/initialNvim.png"><hr>
<kbd><img src ="https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/nvimRice2.png"></kbd><hr>

# Very Useful lua plugins to used in my config - 

#### lspkind-nvim
This tiny plugin adds vscode-like pictograms to neovim built-in lsp completion items :

 <kbd><img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/lspkind.png"></kbd><hr>
 
#### nvim-tree.lua 
fast file tree : 

 <kbd><img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/nvimtree.png"></kbd><hr>
 
### telescope-nvim - 
A fuzzy file finder, picker, sorter, previewer and much more: 
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/tel.png"></kbd>
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/telmedia.png"></kbd><hr>


### galaxyline -
fastest statusline plugin I've used so far: 
 <kbd><img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/statusline.png"></kbd><hr>
 
### gitsigns.nvim -
Shows git signs of a repo on the signcolumn to indicate diffs/changes etc  (needs plenary.nvim)
<hr>

### nvim-bufferline.lua -
As a top bufferline like thing which lets me handle tabs like switching, closing tabs.
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/bufferline.png"></kbd>
<hr>
 
### nvim-web-devicons -
Lua fork of vim devicons which lets me change icons of filetypes
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/image.png"></kbd><hr>
 
### nvim-treesitter 
Better syntax highlighting for programming languages ( my config just has html,css,js support for now ). 

 without Treesitter :
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/woTree.png"></kbd>
 
 with Treesitter :
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/wiTree.png"></kbd><hr>

# Guides to migrate to init.lua - 

- https://github.com/nanotee/nvim-lua-guide

- https://alpha2phi.medium.com/neovim-init-lua-e80f4f136030

- https://oroques.dev/notes/neovim-init/ 

- https://icyphox.sh/blog/nvim-lua/


# Clone my setup - 

- Install neovim-nightly , also use a nerdfont on your terminal.
- Install packer.nvim 

```shell
git clone https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
 - copy all config files in from this repo except ( plugin folder as it has config related to my system's username! )
 - Open neovim and install all plugins , :PackerInstall and :TSUpdate 
 - Install language servers and prettier ( for autocompletion etc and code formatting , nodejs should be installed too!) 
 ``` 
 sudo npm install -g vscode-html-languageserver-bin typescript typescript-language-server  vscode-css-languageserver-bin prettier
 ```
 
 To setup any language server , follow this guide https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md and search up the needed LSP. For example if I needed clangd's lsp server : 
 
 <kbd>
 <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/clang.png">
  </kbd>

  I'd install it first and add its setup line :
  `` -- in /lua/nvim-lspconfig/lua.lua file 
  
       require'lspconfig'.clangd.setup{}  `` 
  
 # Default Mappings to make stuffs easier!
 
 <kbd> space </kbd> is the leader key 
 
 - <kbd> Ctrl </kbd>  <kbd> b </kbd> Open terminal vertically over right
 - <kbd> Ctrl </kbd>  <kbd> x </kbd> Open terminal horizontally below the current window 
 - <kbd> Ctrl </kbd>  <kbd> b </kbd> toggle neovim tree 
 - <kbd> Ctrl </kbd>  <kbd> a </kbd> copies everything in the current file 
 - select any text + <kbd> y </kbd> copies the selected text 
 - leader + <kbd> f </kbd>  <kbd> b </kbd> open all buffers , with  telescope 
 - leader + <kbd> f </kbd>  <kbd> p </kbd> search and preview images with telescope 
 - leader + <kbd> f </kbd>  <kbd> f </kbd> find files in the current DIR , with telescope 
 - leader + <kbd> f </kbd>  <kbd> o </kbd> open recently edited files , with telescope 
 - leader + <kbd> f </kbd>  <kbd> f </kbd> find files in the current DIR , with telescope 
 - leader + <kbd> f </kbd>  <kbd> h </kbd> opens up a manpage like thing but for all vim related things , with telescope 
 - leader + <kbd> f </kbd>  <kbd> m </kbd>  formats or beautifies the code in current window via neoformat
  (currently only html ,css , js can be formatted . To be able to use this keybind you need to install the formatter locally for your language , in my case prettier was required only so I installed it. check this <a> https://github.com/sbdchd/neoformat</a>)
 
 # Troubleshooting -
 
 ![image](https://user-images.githubusercontent.com/59060246/111059898-f096cf00-84be-11eb-977a-f91d622ee5b9.png)
 
if you get any errors with packer.nvim , then remove the ~/.config/nvim/plugin/packer_nvim.vim file since it just has file paths for my system 
and re-install packer.nvim

