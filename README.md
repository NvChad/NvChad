Configuration for [Neovim](https://github.com/neovim/neovim/releases/tag/v0.9.0), started from a vanilla [NvChad](https://nvchad.com/) installation.

Language Support:
 - Autocompletion and suggestions for:
   - Go
   - Lua
   - Python
 - Autoformatting on save for:
   - Go
   - Python
 - Syntaxt highlight for:
   - Bash
   - Go
   - JSON
   - Markdown
   - Python
   - YAML
 
NvChad Editor Updates:
 - NvimTree open by default
 - NvimTree git support
 - Inline git blame
 - Accelerated jk movement
 - Hidden theme toggle

Install by running:

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim 
git clone git@github.com:le4ker/nvim-config.git ~/.config/nvim --depth 1 && nvim
```
