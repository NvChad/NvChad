vim.defer_fn(function()
  pcall(require, "impatient")
end, 0)

require "core"
require "core.options"

-- setup packer + plugins
local fn = vim.fn
local install_path = fn.stdpath "data" .. "/site/pack/packer/opt/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" })
  print "Cloning packer .."
  fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }

  os.execute(
    "mkdir " .. vim.fn.stdpath "data" .. "/site/pack/packer/start/base46_cache/compiled_themes/lua/base46_cache"
  )

  require("base46").compile()

  -- install plugins + compile their configs
  vim.cmd "packadd packer.nvim"
  require "plugins"
  vim.cmd "PackerSync"

  -- install binaries from mason.nvim & tsparsers
  vim.api.nvim_create_autocmd("User", {
    pattern = "PackerComplete",
    callback = function()
      vim.cmd "bw | silent! MasonInstallAll" -- close packer window
      require("packer").loader "nvim-treesitter"
    end,
  })
end

pcall(require, "custom")

require("core.utils").load_mappings()
