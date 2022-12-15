local M = {}

M.disabled = {
  n = {
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
    ["<A-h>"] = "",
    ["<A-i>"] = "",
    ["<A-v>"] = "",
    ["<leader>wa"] = "",
    ["<leader>wr"] = "",
    ["<leader>wl"] = "",
    ["<leader>b"] = "",
    ["<leader>h"] = "",
    ["<C-x>"] = "",
  },
}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<leader>w"] = { ":w<CR>", "save buf" },
    -- switch between windows
    ["<A-h>"] = { "<C-w>h", "window left" },
    ["<A-l>"] = { "<C-w>l", "window right" },
    ["<A-j>"] = { "<C-w>j", "window down" },
    ["<A-k>"] = { "<C-w>k", "window up" },
    ["<C-t>"] = { "<C-T>zz", "center after goback" },
    ["*"] = { ":keepjumps normal! mi*`i<CR>", "just *" },
    ["<leader>o"] = { "<cmd> Telescope buffers <CR>", "find buffer" },
  },
  c = {
    ["<C-a>"] = { "<Home>", "home" },
  },
}

M.buf = {
  n = {
    ["<leader>bo"] = {
      function()
        local bufs = require("nvchad_ui.tabufline").bufilter() or {}
        local currentBuf = vim.api.nvim_get_current_buf()
        for _, buf in ipairs(bufs) do
          if currentBuf ~= buf then
            require("nvchad_ui.tabufline").close_buffer(buf)
          end
        end
      end,
      "close all buffer expect current",
      opts = { noremap = true, silent = true },
    },
    ["<leader>bc"] = {
      function()
        require("nvchad_ui.tabufline").closeAllBufs()
      end,
      "close all buffer",
    },
    ["<leader>ft"] = {
      "<cmd>Telescope asynctasks all<CR>",
      "find all tasks",
    },
  },
}

M.telescope = {
  n = {
    ["<leader>fc"] = {
      "<cmd>Telescope lsp_document_symbols symbols={'function','method'}<CR>",
      "find function",
    },
    ["<leader>fs"] = {
      function()
        vim.cmd("Telescope grep_string")
      end,
      "find string under the cursor",
    },
    ["<leader>fg"] = {
      "<cmd>Telescope resume pickers=live_grep<CR>",
      "reopen search result",
    },
    ["<leader>fz"] = {
      "<cmd>Telescope current_buffer_fuzzy_find<CR>",
      "find string in current text",
    },
    ["<leader>fl"] = {
      function()
        local trouble = require "trouble.providers.telescope"
        trouble.open_with_trouble()
      end,
      "open telescope trouble",
    },
  },
}

M.spectre = {
  n = {
    ["<leader>S"] = {
      "<cmd>lua require('spectre').open()<CR>",
      "search and replace",
    },
    ["<leader>sp"] = {
      "<cmd>lua require('spectre').open_file_search()<CR>",
      "search and replace current file",
    },
  },
}

M.osc = {
  x = {
    ["<leader>Y"] = {
      "<cmd>lua require('osc52').copy_visual()<CR>",
      "remote copy",
    },
  },
}

M.session = {
  n = {
    ["<leader>so"] = {
      "<cmd>:Startify<CR>",
      "open session select window",
    },
    ["<leader>sd"] = {
      "<cmd>:SDelete<CR>",
      "select session to delete",
    },
    ["<leader>ss"] = {
      "<cmd>:SSave<CR>",
      "save session",
    },
    ["<leader>sl"] = {
      ":MyOpenSession",
      "session list",
    },
  },
}
M.dapui = {
  n = {
    ["<leader>k"] = {
      function()
        require("dapui").eval()
      end,
      "debug watch var",
    },
  },
}

M.dap = {
  n = {
    ["<leader>dt"] = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Debug Toggle Breakpoint" },
    ["<leader>db"] = { "<cmd>lua require'dap'.step_back()<cr>", "Debug Step Back" },
    ["<leader>dc"] = {
      function()
        -- 默认先加载当前目录中的配置
        require("dap.ext.vscode").load_launchjs(".vscode/launch.json", { goremote = { "go" } })
        require("dap").continue()
      end,
      "Debug Continue",
    },
    ["<leader>dC"] = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Debug Run To Cursor" },
    ["<leader>dd"] = { "<cmd>lua require'dap'.disconnect()<cr>", "Debug Disconnect" },
    ["<leader>dg"] = { "<cmd>lua require'dap'.session()<cr>", "Debug Get Session" },
    ["<leader>di"] = { "<cmd>lua require'dap'.step_into()<cr>", "Debug Step Into" },
    ["<leader>dn"] = { "<cmd>lua require'dap'.step_over()<cr>", "Debug Step Over" },
    ["<leader>do"] = { "<cmd>lua require'dap'.step_out()<cr>", "Debug Step Out" },
    ["<leader>dp"] = { "<cmd>lua require'dap'.pause()<cr>", "Debug Pause" },
    ["<leader>dr"] = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Debug Toggle Repl" },
    ["<leader>dq"] = { "<cmd>lua require'dap'.close()<cr>", "Debug Quit" },
    ["<leader>du"] = { "<cmd>lua require'dapui'.toggle()<cr>", "Debug Toggle UI" },
    ["<leader>dl"] = { "<cmd>lua require'dap.ext.vscode'.load_launchjs()<CR>", "Debug load launch json" },
  },
}

M.lspconfig = {
  n = {
    ["gr"] = { "<cmd>TroubleToggle lsp_references<CR>", "lsp references" },
    ["gd"] = { "<cmd>TroubleToggle lsp_definitions<CR>", "lsp definition" },
    ["gi"] = { "<cmd>TroubleToggle lsp_implementations<CR>", "lsp implementation" },
    ["<leader>D"] = { "<cmd>TroubleToggle lsp_type_definitions<CR>", "lsp type definition" },
    ["<leader>ld"] = { "<cmd>TroubleToggle document_diagnostics<CR>", "lsp document diagnostics" },
    ["<leader>tt"] = { "<cmd>Trouble Close<CR>", "Trouble Close" },
  },
}

M.floaterm = {
  n = {
    ["<A-o>"] = { ":FloatermToggle<CR>", "floaterm toggle" },
    ["<A-i>"] = { ":FloatermHide!<CR>", "floaterm hide" },
  },
  t = {
    ["<A-a>"] = { "<C-\\><C-n>:FloatermNew<CR>", "floaterm new" },
    ["<A-l>"] = { "<C-\\><C-n>:FloatermNext<CR>", "floaterm right" },
    ["<A-h>"] = { "<C-\\><C-n>:FloatermPrev<CR>", "floaterm left" },
    ["<A-k>"] = { "<C-\\><C-n>:wincmd k<CR>", "floaterm up" },
    ["<A-j>"] = { "<C-\\><C-n>:wincmd j<CR>", "floaterm down" },
    ["<A-q>"] = { "<c-\\><c-n>", "escape term mode" },
    ["<A-o>"] = { "<c-\\><c-n>:FloatermToggle<CR>", "floaterm toggle" },
  },
}

M.todo = {
  n = {
    ["<leader>tc"] = {
      function()
        vim.api.nvim_command("TodoTrouble keywords=[TODO,todo] cwd=" .. vim.fn.expand "%:p:h")
      end,
      "todo trouble",
    },
  },
}

M.hop = {
  n = {
    ["f"] = {
      function()
        local hop = require "hop"
        local directions = require("hop.hint").HintDirection
        hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true }
      end,
      "motion f",
    },
    ["F"] = {
      function()
        local hop = require "hop"
        local directions = require("hop.hint").HintDirection
        hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true }
      end,
      "motion F",
    },
  },
}

M.yank = {
  n = {
    ["<A-n>"] = {
      "<Plug>(YoinkPostPasteSwapBack)",
      "yank cycle",
    },
    ["<A-p>"] = {
      "<Plug>(YoinkPostPasteSwapForward)",
      "yank cycle",
    },
    ["p"] = {
      "<Plug>(YoinkPaste_p)",
      "paste",
    },
    ["P"] = {
      "<Plug>(YoinkPaste_P)",
      "paste before",
    },
  },
}

-- more keybinds!

return M
