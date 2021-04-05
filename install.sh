#!/usr/bin/env bash

pfx="~~~~~ "
heading() {
  echo
  echo $pfx $1
}

heading "linking config"
rm -rf ~/.config/nvim/ && mkdir -p ~/.config/nvim
cp -r init.lua ~/.config/nvim && cp -r lua ~/.config/nvim 

