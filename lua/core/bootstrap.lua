local M = {}

M.lazy = function(install_path)
  print "Bootstrapping lazy.nvim .."

  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    install_path,
  }

  vim.opt.rtp:prepend(install_path)

  -- install plugins + compile their configs
  require "plugins"

  vim.fn.mkdir(vim.g.base46_cache, "p")
  require("base46").load_all_highlights()

  vim.cmd "silent! lua require('lazy').load { plugins = 'nvim-treesitter' }"

  -- install binaries from mason.nvim & tsparsers on LazySync
  vim.schedule(function()
    vim.cmd "silent! MasonInstallAll"
    -- print success message
  end, 0)
end

M.gen_chadrc_template = function()
  if not vim.api.nvim_get_runtime_file("lua/custom/chadrc.lua", false)[1] then
    local input = vim.fn.input "Do you want to install chadrc template? (y/n) : "
    vim.cmd "redraw|echo ''"

    if input == "y" then
      -- clone example_config repo
      print "cloning chadrc starter template repo...."

      vim.fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "-b",
        "v2.0",
        "https://github.com/NvChad/example_config",
        vim.fn.stdpath "config" .. "/lua/custom",
      }
      vim.cmd "redraw|echo ''"

      -- delete .git from that repo
      vim.loop.fs_rmdir(vim.fn.stdpath "config" .. "/lua/custom/.git")
      vim.notify "successfully installed chadrc template!"
      vim.cmd "redraw|echo ''"
    end
  end
end

return M
