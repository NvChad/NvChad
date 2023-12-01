local dap = require("dap")

local dapui = require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end


dap.adapters.goremote = {
    type = "server",
    host = "127.0.0.1",
    port = 38697,
}

-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
-- https://github.com/microsoft/vscode-go/issues/318
-- https://code.visualstudio.com/docs/editor/variables-reference#_configuration-variables
-- https://github.com/golang/vscode-go/blob/master/docs/debugging.md
vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointCondition", { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })
vim.fn.sign_define("DapStopped", { text = "", texthl = "DiagnosticSignWarn", linehl = "", numhl = "" })
vim.fn.sign_define("DapBreakpointReject", { text = "", texthl = "DiagnosticSignHint", linehl = "", numhl = "" })
