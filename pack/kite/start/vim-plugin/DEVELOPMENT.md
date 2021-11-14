# Installation

## Manual installation

### Vim

Assuming your Vim configuration is in `~/.vim/`:

```sh
$ mkdir -p ~/.vim/pack/kite/start/kite
$ git clone https://github.com/kiteco/vim-plugin.git ~/.vim/pack/kite/start/kite/
```

Restart Vim.


### Neovim

Assuming your Neovim configuration is in `~/.config/nvim`:

```sh
$ mkdir -p ~/.config/nvim/pack/kite/start/kite
$ git clone https://github.com/kiteco/vim-plugin.git ~/.config/nvim/pack/kite/start/kite/
```

Restart Neovim.

# Development

When working on the plugin, ensure the file `~/.kite/vim-development` (or `$LOCALAPPDATA$\Kite\vim-development` on Windows) is present.  This tells the plugin to use development mode, i.e. to use the non-production key when POSTing metrics to Segment.
