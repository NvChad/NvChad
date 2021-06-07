#!/bin/sh

get_platform() {
  case "$(uname -s)" in
  Linux*) platform=Linux ;;
  Darwin*) platform=Mac ;;
  CYGWIN*) platform=Cygwin ;;
  MINGW*) platform=MinGw ;;
  *) platform="UNKNOWN:${unameOut}" ;;
  esac
  echo $platform
}

echo "installing packer"

if [ ! -d ~/.local/share/nvim/site/pack/packer ]; then
  echo "Installing packer"
  git clone https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  echo
  echo "packer installed!"
  echo
fi

echo "Linking config"
echo "old nvim config will be deleted so watchout! :0"
echo

# copying config

rm -rf ~/.config/nvim/ && mkdir -p ~/.config/nvim
cp -r init.lua ~/.config/nvim && cp -r lua ~/.config/nvim

# change shell in nvim config
read -p "which shell do you use?: " shellname
echo "$shellname"

if [ "$(get_platform)" = "Mac" ]; then
  gsed -i "s/bash/$shellname/g" ~/.config/nvim/lua/mappings.lua
else
  sed -i "s/bash/$shellname/g" ~/.config/nvim/lua/mappings.lua
fi

echo "shell changed to $shellname on nvim successfully!"
echo
echo "neovim will open with some errors , just press enter" && sleep 1

# install all plugins
nvim +PackerInstall 
