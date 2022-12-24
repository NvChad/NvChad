local M = {}

vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" })

M.packer = function(install_path)
  print "Cloning packer .."
  vim.fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }

  vim.fn.mkdir(vim.g.base46_cache, "p")

  -- install plugins + compile their configs
  vim.cmd "packadd packer.nvim"
  require "plugins"
  vim.cmd "PackerSync"
end

M.chadrc_template = function()
  if not vim.api.nvim_get_runtime_file("lua/custom/chadrc.lua", false)[1] then
    local input = vim.fn.input "Do you want to install chadrc template? (y/n) : "
    vim.cmd "redraw|echo ''"

    if input == "y" then
      -- clone example_config repo
      local example_config_url = "https://github.com/NvChad/example_config"
      print "cloning chadrc starter template repo...."
      vim.fn.system { "git", "clone", "--depth", "1", example_config_url, vim.fn.stdpath "config" .. "/lua/custom" }
      vim.cmd "redraw|echo ''"

      -- delete .git from that repo
      vim.loop.fs_rmdir(vim.fn.stdpath "config" .. "/lua/custom/.git")
      vim.notify "successfully installed chadrc template!"
      vim.cmd "redraw|echo ''"
    end
  end
end

-- install binaries from mason.nvim & tsparsers on PackerComplete
vim.api.nvim_create_autocmd("User", {
  pattern = "PackerComplete",
  callback = function()
    require("base46").load_all_highlights()

    vim.cmd "bw | silent! MasonInstallAll" -- close packer window
    require("packer").loader "nvim-treesitter"

    local statusline_theme = require("core.utils").load_config().ui.statusline.theme
    vim.opt.statusline = "%!v:lua.require('nvchad_ui.statusline." .. statusline_theme .. "').run()"
  end,
})

return M
