Engines (plugins):
vim-snipmate(2k) (SnipMate): SnipMate aims to provide support for textual snippets, similar to TextMate or other Vim plugins like UltiSnips.
ultisnips(6.7k): UltiSnips is the ultimate solution for snippets in Vim. It has many features, speed being one of them. (this has screencasts)
LuaSnip(1k): Snippet Engine for Neovim written in Lua.
vim-vsnip(644): Snippet plugin for vim/nvim that supports LSP/VSCode's snippet format. 
coc-snippets: Snippets solution for coc.nvim 

There are three formats for writing snippets: 
  1. snipmate-format
  2. vscode(json)
  3. lua

utilsnips is based on snipmate format.
LuaSnip can load all of them (see loaders in LuaSnip above)

|              | snipmate-format | vscode(json)-LSP | Lua |
|--------------|-----------------|------------------|-----|
| utilsnips    | yes             | no               | no  |
| snipmate     | yes             | no               | no  |
| vim-vsnip    | no              | yes              | no  |
| LusSnip      | yes             | yes              | yes |
| coc-snippets | yes             | yes              | yes |

collections:
friendly-snippets: a collection of snippets should work with any plugin that supports loading vscode snippets (this is installed on NvChad)
vim-snippets: snipMate & UltiSnip Snippets



the directory structure is based on this:
  https://github.com/L3MON4D3/LuaSnip/blob/master/DOC.md#loaders

  lua: the snippet-library has to be in a directory named "luasnippets".
  snipmate: similar to lua, but the directory has to be "snippets".
  vscode: any directory in runtimepath that contains a package.json contributing snippets.

also see this:
  https://github.com/L3MON4D3/LuaSnip#add-snippets

TODO: make it a real markdown file
