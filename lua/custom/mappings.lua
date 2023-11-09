local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> daptogglebreakpoint <cr>",
      "add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>rr"] = {
     "<Plug>RestNvim",
     "Make a Http request: request run"
   },
    ["<leader>tf"] = {
     "<cmd> lua require(\"nvterm.terminal\").toggle \"float\"<CR>",
     "Toggle terminal float"
   },
    ["<leader>rp"] = {
     "<Plug>RestNvimPreview",
     "Rest http request preview: request preview"
  },
  ["<leader>rl"] = {
   "<Plug>RestNvimLast",
   "Rest run last request: run last"
  },
   ["<BS>"] = {
      "<C-^>",
      "Alternate Files"
    }
 },
  v = {
  ["N"] = {
   ":m '>+1<CR>gv=gv",
   "Move codes selection upward"
  },
    ["E"] = {
     ":m '>-2<CR>gv=gv",
     ""
    }
  }
}

return M
