return function()
  return {
    git = {enable = true, ignore = false, timeout = 1000},
    view = {
      -- adaptive_size = true,
      side = "left",
      width = 30
    },
    renderer = {
      highlight_git = true,
      special_files = {"Cargo.toml", "Makefile", "README.md", "readme.md"},
      icons = {
        padding = " ",
        git_placement = "after",
        show = {git = true},
        glyphs = {
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
      }
    }
  }
end
