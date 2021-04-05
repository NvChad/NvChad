#!/usr/bin/env bash

pfx="~~~~~ "
heading() {
  echo
  echo $pfx $1
}

heading "installing packer"
rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git clone https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

heading "linking config"
rm -rf ~/.config/nvim/ && mkdir -p ~/.config/nvim
cp -r init.lua ~/.config/nvim && cp -r lua ~/.config/nvim 

