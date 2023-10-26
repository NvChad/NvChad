Configuration for [Neovim](https://github.com/neovim/neovim/releases/tag/v0.9.0), based on an [NvChad](https://nvchad.com/) installation.

## Features

Language Support:

- Autocompletion and suggestions for:
  - C/C++
  - Go
  - Lua
  - Markdown
  - Python
  - YAML
- Autoformatting on save for:
  - C/C++
  - Go
  - Lua
  - Markdown
  - Python
  - YAML
- Debugging for:
  - Go
  - Python
- Syntaxt highlight for:
  - Bash
  - C/C++
  - CSS
  - CSV
  - Diff
  - Dockerfile
  - Go
  - gitconfig
  - gitignore
  - GraphQL
  - HTML
  - Javascript
  - JSON
  - Lua
  - Make
  - Markdown
  - Python
  - SCSS
  - SQL
  - Terraform
  - TOML  
  - Typescript
  - YAML

NvChad Editor Updates:

- NvimTree open by default
- NvimTree git support
- Hide dot files by default for NVimTree
- Inline git blame
- Hidden theme toggle
- Ruler at the 80th character
- Show by default relative line numbers
- Horizontal terminal height at 50%

## Installation

### Pre-requisites

- [Neovim 0.9.0](https://github.com/neovim/neovim/releases/tag/v0.9.0)
- [Nerd Font](https://www.nerdfonts.com/)
- [Ripgrep](https://github.com/BurntSushi/ripgrep)

Install by running:

```bash
# remove existing configs
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim 

# install NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
# install custom nvim configuration
git clone https://github.com/le4ker/nvim-config ~/.config/nvim/lua/custom
nvim
```
