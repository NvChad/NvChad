local M = {}

M.options = {
  auto_clean = true,
  compile_on_sync = true,
  git = { clone_timeout = 6000 },
  display = {
    working_sym = "ﲊ",
    error_sym = "✗ ",
    done_sym = " ",
    removed_sym = " ",
    moved_sym = "",
    open_fn = function()
      return require("packer.util").float { border = "single" }
    end,
  },
}

-- merge overrides if there are any
M.options = require("core.utils").load_override(M.options, "wbthomason/packer.nvim")

-- boostrap packer + install & load all the plugins 
M.bootstrap = function()
  local fn = vim.fn
  local install_path = fn.stdpath "data" .. "/site/pack/packer/opt/packer.nvim"

  if fn.empty(fn.glob(install_path)) > 0 then
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1e222a" })
    print "Cloning packer .."
    fn.system { "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path }

    -- install plugins + compile their configs
    vim.cmd "packadd packer.nvim"
    require "plugins"
    vim.cmd "PackerSync"
  end
end

M.run = function(plugins)
  local present, packer = pcall(require, "packer")

  if not present then
    return
  end

  -- Override with chadrc values
  plugins = require("core.utils").remove_default_plugins(plugins)
  plugins = require("core.utils").merge_plugins(plugins)

  packer.init(M.options)

  packer.startup(function(use)
    for _, v in pairs(plugins) do
      use(v)
    end
  end)
end

return M
