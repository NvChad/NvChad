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
