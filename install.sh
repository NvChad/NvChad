#!/bin/sh

# check if git command is installed
command -v git > /dev/null || {
  printf "Install git before proceeding\n"
  exit 1
}

printf "%s\n" "Installing packer"

if [ -d ~/.local/share/nvim/site/pack/packer ]; then
  printf "%s\n" "Clearning previous packer installs"
  rm -rf ~/.local/share/nvim/site/pack
fi

printf "\n%s\n" "=> Cloning packer.."
if git clone https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim; then
  printf "%s\n" "=> Packer installed!"
else
  printf "Error: Couldn't clone packer\n"
  exit 1
fi

printf "%s\n" "Linking config"
printf "%s\n" "Old nvim config will be changed to nvim.bak if exists! :0"

# copying config
if [ -d ~/.config/nvim ]; then
   printf "%s\n" "Nvim Directory exists"
   printf "%s\n" "Changing nvim to nvim.bak"
   mv ~/.config/nvim/ ~/.config/nvim.bak/
   printf "%s\n" "Creating new nvim directory"
   mkdir -p ~/.config/nvim
else
   printf "%s\n" "Nvim Config doesn't exist so creating one"
   mkdir -p ~/.config/nvim/
fi

{ cp -r init.lua ~/.config/nvim/ && cp -r lua ~/.config/nvim/ ;} || {
  printf "Error: Couldn't copy nvim config\n"
  exit 1
}

# change shell in nvim config
_CURRENT_SHELL="${SHELL##*/}"
printf "%s\n: " "Which shell do you want to use ? [ Enter nothing for current shell ( $_CURRENT_SHELL ) ]"
read -r shellname
shellname="${shellname:-${_CURRENT_SHELL}}"
printf "%s\n" "$shellname"

# don't try to do any changes if given shellname is same as bash
if ! [ bash = "$shellname" ]; then
  # Reference: https://stackoverflow.com/a/4247319
  if "$(command -v sed)" -i'.bak' -e "s/bash/$shellname/g" ~/.config/nvim/lua/mappings.lua; then
    printf "\n%s\n" "=> Shell changed to $shellname on nvim successfully!"
  else
    printf "\n%s\n" "Cannot edit with sed, edit ~/.config/nvim/lua/mappings.lua manually to replace bash with $shellname."
  fi
  rm -f ~/.config/nvim/lua/mappings.lua.bak # delete backup file created by sed
else
  printf "\n%s\n" "=> Shell changed to $shellname on nvim successfully!"
fi

printf "\n%s\n" "=> Neovim will open with some errors, just press enter" && sleep 1

# install all plugins + compile them
if _NVIM="$(command -v nvim)"; then
  "${_NVIM}" +PackerSync
else
  printf "Error: Neovim is not installed, install Neovim >= 5.x and then run the below command\n"
  printf "  nvim +PackerSync\n"
  exit 1
fi
