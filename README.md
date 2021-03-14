The config is complete but still WIP as Im new to lua and slowly learning vim stuffs , so I'll keep adding new features like snippets etc and clean the config!

# Screenshots

<kbd>  <img src ="https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/initialNvim.png"></kbd>
<kbd><img src ="https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/nvimRice2.png"></kbd>

# Some VERY COOL lua plugins I use 

- nvim-lspkind , for showing lil icons/pictograms on completion items
 <kbd><img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/lspkind.png"></kbd>
 
- nvim-tree.lua , a fast file tree 
 <kbd><img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/nvimtree.png"></kbd>
 
- telescope-nvim , a fuzzy file finder , picker , sorter , previewer and much more!
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/tel.png"></kbd>
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/telmedia.png"></kbd>


- galaxyline , a statusline plugin
 <kbd><img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/statusline.png"></kbd>
 
- gitsigns.nvim , to show git signs of a repo on the signcolumn to indicate diffs/changes etc  (needs plenary.nvim)

- nvim-bufferline.lua , as a top bufferline like thing which lets me handle tabs like switching , closing tabs.
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/bufferline.png"></kbd>
 
- nvim-web-devicons , lua fork of vim devicons which lets me change icons of filetypes
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/image.png"></kbd>
 
- nvim-treesitter , better syntax highlighting for programming languages ( my config just has html,css,js support for now ). 

 without Treesitter 
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/woTree.png"></kbd>
 
 with Treesitter 
<kbd> <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/wiTree.png"></kbd>

# Some guides to migrate to init.lua!

- https://github.com/nanotee/nvim-lua-guide

- https://alpha2phi.medium.com/neovim-init-lua-e80f4f136030

- https://oroques.dev/notes/neovim-init/ 

- https://icyphox.sh/blog/nvim-lua/


# Clone my setup

- Install neovim-nightly , also use a nerdfont on your terminal.
- Install packer.nvim 

```shell
git clone https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

 
 - Open neovim and install all plugins , :PackerInstall and :TSUpdate 
 - Install language servers and prettier ( for autocompletion etc and code formatting , nodejs should be installed too!) 
 - copy all config files in from this repo except ( plugin folder )
 ``` 
 sudo npm install -g vscode-html-languageserver-bin typescript typescript-language-server  vscode-css-languageserver-bin prettier
 ```
 
 To setup any language server , follow this guide https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md and search up the needed LSP. For example if I needed clangd's lsp server : 
 
 <kbd>
 <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/clang.png">
  </kbd>
 
 
 

  I'd install it first and add its setup line ( require'lspconfig'.clangd.setup{} ) in /lua/nvim-lspconfig/lua.lua file . I will organise the config slowly and soon add a list of important mappings used in my config , on this readme so it might get easy for some :) 
  
 # Troubleshooting 
 
 ![image](https://user-images.githubusercontent.com/59060246/111059898-f096cf00-84be-11eb-977a-f91d622ee5b9.png)
 
if you get any errors with packer.nvim , then remove the ~/.config/nvim/plugin/packer_nvim.vim file since it just has file paths for my system 
and re-install packer.nvim  


