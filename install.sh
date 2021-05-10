#!/usr/bin/env bash
BASE=$(git rev-parse --show-toplevel)
LSP_BIN_PATH=$HOME/.local/bin

default_lsp_langs="css html ts rust python bash json lua"
lsp_langs=""

choose_langs() {
  read -p "Would you like to install $1 lsp?(y/n)" lang
  if [ "$lang" = "y" ]; then
    lsp_langs+="$1 "
  fi
}

for lang in $default_lsp_langs; do
  choose_langs $lang
done

# install npm pkg global
npm config set prefix=~/.node_modules 

pfx="~~~~~ "
heading() {
  echo
  echo $pfx $1
}

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

heading "installing packer"

if [[ ! -e ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]]; then
  heading "Installing packer"
  git clone https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

heading "Linking config"
heading "old nvim config will be deleted so watchout :0"

# copying config

rm -rf ~/.config/nvim/ && mkdir -p ~/.config/nvim
cp -r init.lua ~/.config/nvim && cp -r lua ~/.config/nvim

# change shell for nvim
read -p "which shell do you use?: " shellname
echo "$shellname"

if [ "$(get_platform)" = "Mac" ]; then
  gsed -i "s/bash/$shellname/g" ~/.config/nvim/lua/mappings.lua
else
  sed -i "s/bash/$shellname/g" ~/.config/nvim/lua/mappings.lua
fi

echo "shell changed to $shellname on nvim successfully!"

#for f in `find -E . -regex ".*\.vim$|.*\.lua$"`; do
#  p=${f#*/}
#  echo -e '\t' ${p}
#  path=~/.config/nvim/${p}
#  rm -rf ~/.config/nvim/${p}
#  mkdir -p $(dirname "${path}")
#  ln -s ${BASE}/${p} ~/.config/nvim/${p}
#done

#heading "Installing plugins"
#nvim --headless +PackerInstall +qa
#nvim --headless +TSUpdate +qa
echo

fn_exists() { declare -F "$1" >/dev/null; }
warn_path=false

install_node_deps() {
  if [[ -z $(which npm) ]]; then
    echo "npm not installed"
    return
  fi
  npm install -g $@
}

# install languages

install_ts() {
  install_node_deps typescript typescript-language-server prettier
}

install_html() {
  install_node_deps vscode-html-languageserver-bin
}

install_css() {
  install_node_deps vscode-css-languageserver-bin
}

install_json() {
  install_node_deps vscode-json-languageserver
}

install_rust() {
  if [[ ! -e ~/.local/bin/rust-analyzer ]]; then
    mkdir -p ${LSP_BIN_PATH}
    curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-$(get_platform) -o ~/.local/bin/rust-analyzer
    chmod +x ~/.local/bin/rust-analyzer
    warn_path=true
  else
    echo "already installed"
  fi
}

install_python() {
  install_node_deps pyright
}

install_bash() {
  install_node_deps bash-language-server
}

install_lua() {
    git clone https://github.com/sumneko/lua-language-server ~/.config/lua-language-server
    ( cd ~/.config/lua-language-server/ && git submodule update --init --recursive )

    #linux only
    (cd ~/.config/lua-language-server/3rd/luamake/ && compile/install.sh)
    (cd ~/.config/lua-language-server/ &&  ./3rd/luamake/luamake rebuild)
    
}

for lang in ${lsp_langs}; do
  if fn_exists install_$lang; then
    heading "Installing $lang language server"
    install_$lang
  else
    echo $lang setup not implemented
    echo
  fi
done

if [[ ${warn_path} == true ]]; then
  echo ""
  echo "Ensure ${LSP_BIN_PATH} is available in your \$PATH variable"
fi

echo "add ~/.node_modules/bin at PATH!"

# install all plugins via packer

nvim +PackerInstall
