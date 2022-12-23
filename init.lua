vim.defer_fn(function()
  pcall(require, "impatient")
end, 0)

require "core"
require "core.options"

pcall(function()
  loadfile(vim.g.base46_cache .. "bg")()
end)

-- setup packer + plugins
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" })
  print "Cloning packer .."
  fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }

  vim.fn.mkdir(vim.g.base46_cache, "p")

  -- install plugins + compile their configs
  vim.cmd "packadd packer.nvim"

  require "plugins"
  vim.cmd "PackerSync"

  -- install binaries from mason.nvim & tsparsers
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
end

pcall(require, "custom")

require("core.utils").load_mappings()
