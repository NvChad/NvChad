return {
  auto_reload_on_write = true,
  disable_netrw = false,
  hijack_cursor = false,
  hijack_netrw = true,
  hijack_unnamed_buffer_when_opening = false,
  ignore_buffer_on_setup = false,
  open_on_setup = false,
  open_on_setup_file = false,
  sort_by = "name",
  root_dirs = {},
  prefer_startup_root = false,
  sync_root_with_cwd = false,
  reload_on_bufenter = false,
  respect_buf_cwd = false,
  on_attach = "disable",
  remove_keymaps = false,
  select_prompts = false,
  view = {
    centralize_selection = false,
    cursorline = true,
    debounce_delay = 15,
    width = 30,
    hide_root_folder = false,
    side = "left",
    preserve_window_proportions = false,
    number = false,
    relativenumber = false,
    signcolumn = "yes",
    mappings = {
      custom_only = false,
      list = {
        -- user mappings go here
      }
    },
    float = {
      enable = false,
      quit_on_focus_loss = true,
      open_win_config = {relative = "editor", border = "rounded", width = 30, height = 30, row = 1, col = 1}
    }
  },
  renderer = {
    add_trailing = false,
    group_empty = false,
    highlight_git = true, -- @! false -> true
    full_name = false,
    highlight_opened_files = "none",
    highlight_modified = "none",
    root_folder_label = ":~:s?$?/..?",
    indent_width = 2,
    indent_markers = {
      enable = false,
      inline_arrows = true,
      icons = {corner = "└", edge = "│", item = "│", bottom = "─", none = " "}
    },
    icons = {
      webdev_colors = true,
      git_placement = "after", -- @! "before" -> "after"
      modified_placement = "before", -- @! "after" -> "before"
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {file = true, folder = true, folder_arrow = true, git = true, modified = true},
      glyphs = {
        default = "",
        symlink = "",
        bookmark = "",
        modified = "●",
        folder = {
          arrow_closed = "",
          arrow_open = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = ""
        },
        -- git = {
        --   unstaged = "✗",
        --   staged = "✓",
        --   unmerged = "",
        --   renamed = "➜",
        --   untracked = "★",
        --   deleted = "",
        --   ignored = "◌",
        -- },
        git = {
          -- unstaged = "✗",
          unstaged = "~",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          -- untracked = "+",
          -- untracked = "🞤",
          -- untracked = "⊞",
          -- untracked = "⊕",
          untracked = "",
          -- deleted = "",
          -- deleted = "⊟",
          -- deleted = "-",
          -- deleted = "⊖",
          deleted = "",
          -- ignored = "◌",
          ignored = ""
        }
      }
    },
    special_files = {"pyproject.toml", "Cargo.toml", "Makefile", "README.md", "readme.md"}, -- @! add pyproject.toml
    symlink_destination = true
  },
  hijack_directories = {enable = true, auto_open = true},
  update_focused_file = {enable = false, update_root = false, ignore_list = {}},
  ignore_ft_on_setup = {},
  system_open = {cmd = "", args = {}},
  diagnostics = {
    enable = false,
    show_on_dirs = false,
    show_on_open_dirs = true,
    debounce_delay = 50,
    severity = {min = vim.diagnostic.severity.HINT, max = vim.diagnostic.severity.ERROR},
    icons = {hint = "", info = "", warning = "", error = ""}
  },
  filters = {dotfiles = false, git_clean = false, no_buffer = false, custom = {}, exclude = {}},
  filesystem_watchers = {enable = true, debounce_delay = 50, ignore_dirs = {}},
  git = {enable = true, ignore = true, show_on_dirs = true, show_on_open_dirs = true, timeout = 400},
  modified = {enable = false, show_on_dirs = true, show_on_open_dirs = true},
  actions = {
    use_system_clipboard = true,
    change_dir = {enable = true, global = false, restrict_above_cwd = false},
    expand_all = {max_folder_discovery = 300, exclude = {}},
    file_popup = {open_win_config = {col = 1, row = 1, relative = "cursor", border = "shadow", style = "minimal"}},
    open_file = {
      quit_on_open = false,
      resize_window = true,
      window_picker = {
        enable = true,
        picker = "default",
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = {"notify", "packer", "qf", "diff", "fugitive", "fugitiveblame"},
          buftype = {"nofile", "terminal", "help"}
        }
      }
    },
    remove_file = {close_window = true}
  },
  trash = {cmd = "gio trash"},
  live_filter = {prefix = "[FILTER]: ", always_show_folders = true},
  tab = {sync = {open = false, close = false, ignore = {}}},
  notify = {threshold = vim.log.levels.INFO},
  ui = {confirm = {remove = true, trash = true}},
  log = {
    enable = false,
    truncate = false,
    types = {
      all = false,
      config = false,
      copy_paste = false,
      dev = false,
      diagnostics = false,
      git = false,
      profile = false,
      watcher = false
    }
  }
}
