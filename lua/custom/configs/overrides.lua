local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  view = {
    adaptive_size = true,
    side = "left",
    width = 25,
  },
  renderer = {
    highlight_git = true,
    root_folder_label = false,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.telescope = {
  -- extensions_list = { "themes", "terms", "xray23", "fzf", "yank_history"},
  extensions= {
    fzf = {
      fuzzy = true, -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true, -- override the file sorter
      case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },
    xray23 = {
        -- location to store session files, default is vim.fn.stdpath("data") .. "/vimSession"
        sessionDir = vim.fn.stdpath "data" .. "/sessions",
    },
  },
  defaults = {
    initial_mode = "normal",
    cache_picker = {
      num_pickers = 3,
    },
    prompt_prefix = " ",
    selection_caret = " ",
    layout_config = {
      horizontal = {
        prompt_position = "top",
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
      scroll_speed= 5,
    },
    mappings = {
        n = {
        ["q"] = require("telescope.actions").close,
        ["d"] = require("telescope.actions").delete_buffer,
        ["<c-f>"] = require("telescope.actions").results_scrolling_down,
        ["<c-b>"] = require("telescope.actions").results_scrolling_up,
        ["<c-c>"] = require("telescope.actions").close,
        ["<Tab>"] = { "a", type = "command" },
        ["<C-j>"] = require("telescope.actions").toggle_selection + require("telescope.actions").move_selection_worse,
        ["<C-k>"] = require("telescope.actions").toggle_selection + require("telescope.actions").move_selection_better,
        ["<C-q>"] = require("telescope.actions").send_to_qflist + require("telescope.actions").open_qflist,
      },
      i = {
        ["<c-u>"] = false,
        ["<c-a>"] = { "<home>", type = "command" },
        ["<c-e>"] = { "<end>", type = "command" },
        ["<Tab>"] = { "<ESC>", type = "command" },
        ["<C-j>"] = require("telescope.actions").toggle_selection + require("telescope.actions").move_selection_worse,
        ["<C-k>"] = require("telescope.actions").toggle_selection + require("telescope.actions").move_selection_better,
      },
    },
    pickers = {
        buffers = {
            sort_mru = true,
        },
    },
  },
}

return M
