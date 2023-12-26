# Neovim Config

Configuration for [Neovim](https://github.com/neovim/neovim/releases/tag/v0.9.0),
based on the [NvChad](https://nvchad.com/) distribution.

## Pre-requisites

- [Neovim 0.9.0](https://github.com/neovim/neovim/releases/tag/v0.9.0)
- [Nerd Font](https://www.nerdfonts.com/)
- [Ripgrep](https://github.com/BurntSushi/ripgrep)
- [Glow](https://github.com/charmbracelet/glow)
- [Terraform](https://www.terraform.io/)

## Preview Instructions

> Install requires Neovim 0.9+. Always review the code before installing a configuration.

Clone the repository and install the plugins:

```sh
git clone git@github.com:le4ker/nvim-config ~/.config/le4ker/nvim-config
NVIM_APPNAME=le4ker/nvim-config/ nvim --headless +"Lazy! sync" +qa
```

Open Neovim with this config:

```sh
NVIM_APPNAME=le4ker/nvim-config/ nvim
```

## Installation Instructions

Remove existing config:

```sh
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
```

Install config:

```sh
git clone https://github.com/le4ker/nvim-config ~/.config/nvim/
nvim
```

## Language Servers

- Bash Language Server
- Clangd
- Dockerfile Language Server
- gopls
- Lua Language Server
- Marksman
- Pyright
- Terraform Language Server
- Typescript Language Server
- YAML Language Server

## Formatters

- beautysh
- black
- clang-format
- gofmt
- prettier
- rubocop
- stylua
- terraform_fmt
- yamlfmt

## Linters

- golangci-lint
- markdownlint
- rubocop
- tflint

## Debuggers

- Delve
- DebugPy

## Preview

### Github Copilot

![copilot](./.img/copilot.png)

### Search

![search](./.img/search.png)

### Git commits

![git-commits](./.img/git-commits.png)

### Markdown Preview

![md-preview](./.img/md-preview.png)

### Cheatsheet

![cheatsheet](./.img/cheatsheet.png)
