# neovim-dots
my neovim dotfiles 

slowly migrating to init.lua and still WIP! so use config from neovim_vimscriptonly/nvim folder only for now.

# screenshots

<img src ="https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/initialNvim.png">
<img src ="https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/nvimRice2.png">

# Some VERY COOL lua plugins I use 

- nvim-lspkind , for showing lil icons/pictograms on completion items
 <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/lspkind.png">
 
- nvim-tree.lua , a fast file tree 
 <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/nvimtree.png">
 
- galaxyline , a statusline plugin
 <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/statusline.png">
 
- gitsigns.nvim , to show git signs of a repo on the signcolumn to indicate diffs/changes etc  (needs plenary.nvim)

- nvim-bufferline.lua , as a top bufferline like thing which lets me handle tabs like switching , closing tabs.
 <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/bufferline.png">
 
- nvim-web-devicons , lua fork of vim devicons which lets me change icons of filetypes
 <img src = "https://raw.githubusercontent.com/siduck76/personal-backup/master/rice%20flex/image.png">
 
- nvim-treesitter' , better syntax highlighting for programming languages ( my config just has html,css,js support for now ). 

# clone my setup

- install neovim-nightly , also use a nerdfont on your terminal.
- install packer.nvim 
` git clone https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
 
 - open neovim and install all plugins , :PackerInstall and :TSUpdate 
 - install language servers and prettier ( for autocompletion etc and code formatting ) 
 `sudo npm install -g vscode-html-languageserver-bin typescript typescript-language-server  vscode-css-languageserver-bin prettier` 
