local M = {}

M.echo = function(str)
  vim.cmd "redraw"
  vim.api.nvim_echo({ { str, "Bold" } }, true, {})
end

M.lazy = function(install_path)
  ------------- base46 ---------------
  local lazy_path = vim.fn.stdpath "data" .. "/lazy/base46"

  M.echo "  Compiling base46 theme to bytecode ..."

  local base46_repo = "https://github.com/NvChad/base46"
  vim.fn.system { "git", "clone", "--depth", "1", "-b", "v2.0", base46_repo, lazy_path }
  vim.opt.rtp:prepend(lazy_path)

  require("base46").compile()

  --------- lazy.nvim ---------------
  M.echo "  Installing lazy.nvim & plugins ..."
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", repo, install_path }
  vim.opt.rtp:prepend(install_path)

  -- install plugins
  require "plugins"
  vim.api.nvim_buf_delete(0, { force = true }) -- close lazy window

  ---------- mason packages -------------
  vim.schedule(function()
    vim.cmd "MasonInstallAll"
    local packages = table.concat(vim.g.mason_binaries_list, " ")

    require("mason-registry"):on("package:install:success", function(pkg)
      packages = string.gsub(packages, pkg.name:gsub("%-", "%%-"), "") -- rm package name

      if packages:match "%S" == nil then
        vim.schedule(function()
          vim.api.nvim_buf_delete(0, { force = true })
          M.echo "Now please read the docs at nvchad.com!! 󰕹 󰱬"
        end)
      end
    end)
  end)
end

M.gen_chadrc_template = function()
  if not vim.api.nvim_get_runtime_file("lua/custom/chadrc.lua", false)[1] then
    local path = vim.fn.stdpath "config" .. "/lua/custom/"
    local input = vim.fn.input "Do you want to install example custom config? (y/N) : "

    if input == "y" then
      M.echo "cloning example custom config repo ..."
      vim.fn.system { "git", "clone", "--depth", "1", "https://github.com/NvChad/example_config", path }
      vim.fn.delete(path .. ".git", "rf")
    else
      vim.fn.mkdir(path, "p")

      local file = io.open(path .. "chadrc.lua", "w")
      file:write "local M = {}\n M.ui = {theme = 'onedark'}\n return M"
      file:close()
    end
  end
end

return M
