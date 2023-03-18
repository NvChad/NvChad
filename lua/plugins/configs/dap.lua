local present, dap = pcall(require, "dap")

if not present then
  return
end

dap.adapters.coreclr = {
  type = 'executable',
  command = 'C:/Users/Admin/AppData/Local/nvim-data/mason/packages/netcoredbg/netcoredbg/netcoredbg.exe',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll', vim.fn.getcwd() .. '/bin/Debug/', 'file')
    end,
  },
}
