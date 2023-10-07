Configuration for [Neovim](https://github.com/neovim/neovim/releases/tag/v0.9.0), started from a vanilla [NvChad](https://nvchad.com/) installation.

Features:
 - Syntaxt highlight for:
   - Go
   - JSON
   - Markdown
   - YAML
 - Autocompletion and suggestions for:
   - Go
 - Autoformatting on save for:
   - Go
 - Inline git blame
 - Accelerated jk movement

Install by running:

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim 
git clone git@github.com:le4ker/nvim-config.git ~/.config/nvim --depth 1 && nvim
```
