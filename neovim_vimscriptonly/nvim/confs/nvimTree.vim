let g:nvim_tree_side =  'left' "left by default
let g:nvim_tree_width = 24 "30 by default
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_auto_open = 0 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 0 "0 by default, closes the tree when it's the last window
let g:nvim_tree_quit_on_open = 0 "0 by default, closes the tree when you open a file
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_indent_markers = 1 "0 by default, this option shows indent markers when folders are open
let g:nvim_tree_hide_dotfiles = 1 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_git_hl = 1 "0 by default, will enable file highlight for git attributes (can be used without the icons).
let g:nvim_tree_root_folder_modifier = ':~' "This is the default. See :help filename-modifiers for more options
let g:nvim_tree_tab_open = 1 "0 by default, will open the tree when entering a new tab and the tree was previously open
let g:nvim_tree_allow_resize = 1 "0 by default, will not resize the tree when opening a file
let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 1,
    \ 'files': 1,
    \ }

" default will show icon by default if no icon is provided
" default shows no icon by default
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★"
    \   },
    \ 'folder': {
    \   'default': "",
    \   'open': "",
    \   'symlink': "",
    \   }
    \ }

"hi LuaTreeIndentMarker guifg=#C8CCD4
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :LuaTreeRefresh<CR>
nnoremap <leader>n :LuaTreeFindFile<CR>
" LuaTreeOpen and LuaTreeClose are also available if you need them

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guifg= #61afef 
highlight NvimTreeFolderName guifg = #61afef


lua << EOF
local get_lua_cb = function (cb_name)
  return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
end

-- Mappings for nvimtree
vim.g.nvim_tree_bindings = {
  ["<CR>"]           = get_lua_cb("edit"),
  ["o"]              = get_lua_cb("edit"),
  ["<2-LeftMouse>"]  = get_lua_cb("edit"),
  ["<2-RightMouse>"] = get_lua_cb("cd"),
  ["<C-]>"]          = get_lua_cb("cd"),
  ["<C-v>"]          = get_lua_cb("vsplit"),
  ["<C-x>"]          = get_lua_cb("split"),
  ["<C-t>"]          = get_lua_cb("tabnew"),
  ["<BS>"]           = get_lua_cb("close_node"),
  ["<S-CR>"]         = get_lua_cb("close_node"),
  ["<Tab>"]          = get_lua_cb("preview"),
  ["I"]              = get_lua_cb("toggle_ignored"),
  ["H"]              = get_lua_cb("toggle_dotfiles"),
  ["R"]              = get_lua_cb("refresh"),
  ["a"]              = get_lua_cb("create"),
  ["d"]              = get_lua_cb("remove"),
  ["r"]              = get_lua_cb("rename"),
  ["<C-r>"]          = get_lua_cb("full_rename"),
  ["x"]              = get_lua_cb("cut"),
  ["c"]              = get_lua_cb("copy"),
  ["p"]              = get_lua_cb("paste"),
  ["[c"]             = get_lua_cb("prev_git_item"),
  ["]c"]             = get_lua_cb("next_git_item"),
  ["-"]              = get_lua_cb("dir_up"),
  ["q"]              = get_lua_cb("close"),
}

require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- DevIcon will be appended to `name`
 override = {
  html = {
    icon = "",
    color = "#DE8C92",
    name = "html"
  },
  css = {
    icon = "",
    color = "#61afef",
    name = "css"
  },
   js = {
    icon = "",
    color = "#EBCB8B",
    name = "js"
  },
   png = {
    icon = " ",
    color = "#BD77DC",
    name = "png"
  },
   jpg = {
    icon = " ",
    color = "#BD77DC",
    name = "jpg"
  },
   jpeg = {
    icon = " ",
    color = "#BD77DC",
    name = "jpeg"
  },  
  mp3 = {
    icon = "",
    color = "#C8CCD4",
    name = "mp3"
  },
   mp4 = {
    icon = "",
    color = "#C8CCD4",
    name = "mp4"
  }, 
    out = {
    icon = "",
    color = "#C8CCD4",
    name = "out"
  },
    toml = {
    icon = "",
    color = "#61afef",
    name = "toml"
  },
  lock = {
    icon = "",
    color = "#DE6B74",
    name = "lock"
  }
 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
EOF
