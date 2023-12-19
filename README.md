# Neovim Config

<a href="https://dotfyle.com/le4ker/nvim-config"><img src="https://dotfyle.com/le4ker/nvim-config/badges/plugins?style=flat" /></a>
<a href="https://dotfyle.com/le4ker/nvim-config"><img src="https://dotfyle.com/le4ker/nvim-config/badges/leaderkey?style=flat" /></a>
<a href="https://dotfyle.com/le4ker/nvim-config"><img src="https://dotfyle.com/le4ker/nvim-config/badges/plugin-manager?style=flat" /></a>

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

- Bash/Zsh
- C/C++
- Go
- Lua
- Markdown
- Python
- Terraform
- Typescript
- YAML

## Formatters

- Bash/Zsh
- C/C++
- CSS
- Go
- GraphQL
- HTML
- Javascript
- Lua
- Markdown
- Python
- Ruby
- SCSS
- Terraform
- Typescript
- YAML

## Linters

- Markdown
- Terraform

## Debuggers

- Go
- Python

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

## Plugins

### color

- [NvChad/nvim-colorizer.lua](https://dotfyle.com/plugins/NvChad/nvim-colorizer.lua)

### comment

- [numToStr/Comment.nvim](https://dotfyle.com/plugins/numToStr/Comment.nvim)

### completion

- [zbirenbaum/copilot.lua](https://dotfyle.com/plugins/zbirenbaum/copilot.lua)
- [hrsh7th/nvim-cmp](https://dotfyle.com/plugins/hrsh7th/nvim-cmp)

### debugging

- [rcarriga/nvim-dap-ui](https://dotfyle.com/plugins/rcarriga/nvim-dap-ui)
- [mfussenegger/nvim-dap](https://dotfyle.com/plugins/mfussenegger/nvim-dap)

### editing-support

- [windwp/nvim-autopairs](https://dotfyle.com/plugins/windwp/nvim-autopairs)

### fuzzy-finder

- [nvim-telescope/telescope.nvim](https://dotfyle.com/plugins/nvim-telescope/telescope.nvim)

### git

- [lewis6991/gitsigns.nvim](https://dotfyle.com/plugins/lewis6991/gitsigns.nvim)

### indent

- [lukas-reineke/indent-blankline.nvim](https://dotfyle.com/plugins/lukas-reineke/indent-blankline.nvim)

### keybinding

- [folke/which-key.nvim](https://dotfyle.com/plugins/folke/which-key.nvim)

### lsp

- [jose-elias-alvarez/null-ls.nvim](https://dotfyle.com/plugins/jose-elias-alvarez/null-ls.nvim)
- [neovim/nvim-lspconfig](https://dotfyle.com/plugins/neovim/nvim-lspconfig)

### lsp-installer

- [williamboman/mason.nvim](https://dotfyle.com/plugins/williamboman/mason.nvim)

### markdown-and-latex

- [ellisonleao/glow.nvim](https://dotfyle.com/plugins/ellisonleao/glow.nvim)

### nvim-dev

- [nvim-lua/plenary.nvim](https://dotfyle.com/plugins/nvim-lua/plenary.nvim)

### plugin-manager

- [folke/lazy.nvim](https://dotfyle.com/plugins/folke/lazy.nvim)

### snippet

- [L3MON4D3/LuaSnip](https://dotfyle.com/plugins/L3MON4D3/LuaSnip)
- [rafamadriz/friendly-snippets](https://dotfyle.com/plugins/rafamadriz/friendly-snippets)

### syntax

- [nvim-treesitter/nvim-treesitter](https://dotfyle.com/plugins/nvim-treesitter/nvim-treesitter)
