function ToggleTransparency()
  require("base46").toggle_transparency()
end

vim.api.nvim_create_user_command("NvTransparency", ToggleTransparency, {})
vim.api.nvim_create_user_command("ToggleTransparency", ToggleTransparency, {})
vim.api.nvim_create_user_command("Transparency", ToggleTransparency, {})
