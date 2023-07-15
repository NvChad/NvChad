local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    ["<leader>rr"] = {
     "<Plug>RestNvim",
     "Make a Http request: request run"
   },
    ["<leader>rp"] = {
     "<Plug>RestNvimPreview",
     "Rest http request preview: request preview"
  },
  ["<leader>rl"] = {
   "<Plug>RestNvimLast",
   "Rest run last request: run last"
  },
 }
}

return M
