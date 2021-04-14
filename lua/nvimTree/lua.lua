local cmd = vim.cmd
local g = vim.g

cmd [[packadd nvim-tree.lua]]

vim.o.termguicolors = true



g.nvim_tree_side = "left"
g.nvim_tree_width = 25
g.nvim_tree_ignore = {".git", "node_modules", ".cache"}
g.nvim_tree_auto_open = 0
g.nvim_tree_auto_close = 0
g.nvim_tree_quit_on_open = 0
g.nvim_tree_follow = 1
g.nvim_tree_indent_markers = 1
g.nvim_tree_hide_dotfiles = 1
g.nvim_tree_git_hl = 1
g.nvim_tree_root_folder_modifier = ":~"
g.nvim_tree_tab_open = 1
g.nvim_tree_allow_resize = 1

g.nvim_tree_show_icons = {
    git = 1,
    folders = 1,
    files = 1
}

g.nvim_tree_icons = {
    default = " ",
    symlink = " ",
    git = {
        unstaged = "✗",
        staged = "✓",
        unmerged = "",
        renamed = "➜",
        untracked = "★"
    },
    folder = {
        default = "",
        open = "",
        symlink = ""
    }
}

local get_lua_cb = function(cb_name)
    return string.format(":lua require'nvim-tree'.on_keypress('%s')<CR>", cb_name)
end

-- Mappings for nvimtree

vim.api.nvim_set_keymap(
    "n",
    "<C-n>",
    ":NvimTreeToggle<CR>",
    {
        noremap = true,
        silent = true
    }
)

g.nvim_tree_bindings = {
    ["<CR>"] = get_lua_cb("edit"),
    ["o"] = get_lua_cb("edit"),
    ["<2-LeftMouse>"] = get_lua_cb("edit"),
    ["<2-RightMouse>"] = get_lua_cb("cd"),
    ["<C-]>"] = get_lua_cb("cd"),
    ["<C-v>"] = get_lua_cb("vsplit"),
    ["<C-x>"] = get_lua_cb("split"),
    ["<C-t>"] = get_lua_cb("tabnew"),
    ["<BS>"] = get_lua_cb("close_node"),
    ["<S-CR>"] = get_lua_cb("close_node"),
    ["<Tab>"] = get_lua_cb("preview"),
    ["I"] = get_lua_cb("toggle_ignored"),
    ["H"] = get_lua_cb("toggle_dotfiles"),
    ["R"] = get_lua_cb("refresh"),
    ["a"] = get_lua_cb("create"),
    ["d"] = get_lua_cb("remove"),
    ["r"] = get_lua_cb("rename"),
    ["<C-r>"] = get_lua_cb("full_rename"),
    ["x"] = get_lua_cb("cut"),
    ["c"] = get_lua_cb("copy"),
    ["p"] = get_lua_cb("paste"),
    ["[c"] = get_lua_cb("prev_git_item"),
    ["]c"] = get_lua_cb("next_git_item"),
    ["-"] = get_lua_cb("dir_up"),
    ["q"] = get_lua_cb("close")
}



cmd "hi NvimTreeFolderIcon guifg = #61afef"
cmd "hi NvimTreeFolderName guifg = #61afef"
cmd "hi NvimTreeIndentMarker guifg=#383c44"
