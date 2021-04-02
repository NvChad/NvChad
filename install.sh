#!/usr/bin/env bash
BASE=$(git rev-parse --show-toplevel)
LSP_BIN_PATH=$HOME/.local/bin

default_lsp_langs="css html ts rust python"
lsp_langs=${@:-"$default_lsp_langs"}

pfx="~~~~~ "
heading() {
  echo
  echo $pfx $1
}

get_platform() {
  case "$(uname -s)" in
    Linux*)     platform=Linux;;
    Darwin*)    platform=Mac;;
    CYGWIN*)    platform=Cygwin;;
    MINGW*)     platform=MinGw;;
    *)          platform="UNKNOWN:${unameOut}"
  esac
  echo $platform
}

heading "installing packer"

if [[ ! -e ~/.local/share/nvim/site/pack/packer/start/packer.nvim ]]; then
  heading "Installing packer"
  git clone https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
fi

heading "Linking config"
heading "old nvim config will be deleted so watchout :0"

# copying config 

rm -rf ~/.config/nvim/ && mkdir -p ~/.config/nvim
cp -r init.lua ~/.config/nvim && cp -r lua ~/.config/nvim 

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

fn_exists() { declare -F "$1" > /dev/null; }
warn_path=false

install_node_deps () {
  if [[ -z $(which npm) ]]; then
    echo "npm not installed"
    return
  fi
  sudo npm install -g $@
}

install_python_deps () {
  if [[ -z $(which pip) && -z $(which pip3) ]]; then
    echo "python/pip not installed"
    return
  fi
  sudo python3 -m pip install $@
}

install_ts() {
  install_node_deps typescript typescript-language-server prettier
}

install_html() {
  install_node_deps vscode-html-languageserver-bin
}

install_css() {
  install_node_deps vscode-css-languageserver-bin
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

install_python(){
  install_python_deps 'python-language-server[all]'
}

for lang in ${lsp_langs}; do
  if fn_exists install_$lang ; then
    heading "Installing $lang language server"
    install_$lang
  else
    echo $lang setup not implemented
    echo 
  fi
done

if [[ ${warn_path} = true ]]; then
  echo ""
  echo "Ensure ${LSP_BIN_PATH} is available in your \$PATH variable"
fi
