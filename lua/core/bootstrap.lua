local M = {}

M.base46 = function()
  vim.notify "  Compiling base46 theme to bytecode ..."

  local repo = "https://github.com/NvChad/base46"
  local tmp_path = vim.fn.stdpath "config" .. "/tmp_base46"

  vim.fn.system { "git", "clone", "--depth", "1", "-b", "v2.0", repo, tmp_path }
  vim.opt.rtp:prepend(tmp_path)
  require("base46").compile()

  vim.fn.delete(tmp_path, "rf")
end

M.lazy = function(install_path)
  vim.cmd "redraw|echo '' | echo '  Installing lazy.nvim & plugins ..'"

  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", repo, install_path }

  vim.opt.rtp:prepend(install_path)

  -- install plugins + compile their configs
  require "plugins"
  vim.api.nvim_buf_delete(0, { force = true }) -- close lazy window

  -- install mason packages
  vim.schedule(function()
    vim.cmd "MasonInstallAll"
    local packages = table.concat(vim.g.mason_binaries_list, " ")

    require("mason-registry"):on("package:install:success", function(pkg)
      packages = string.gsub(packages, pkg.name:gsub("%-", "%%-"), "") -- rm package name

      if packages:match "%S" == nil then
        vim.schedule(function()
          vim.api.nvim_buf_delete(0, { force = true })
          vim.api.nvim_echo({ { "Now please read the docs at nvchad.com!! 󰕹 󰱬 ", "NvimInternalError" } }, true, {})
        end)
      end
    end)
  end)
end

M.gen_chadrc_template = function()
  if not vim.api.nvim_get_runtime_file("lua/custom/chadrc.lua", false)[1] then
    local input = vim.fn.input "Do you want to install chadrc template? (y/n) : "

    if input == "y" then
      vim.cmd "redraw|echo '' | echo 'cloning chadrc starter template repo..'"

      local repo = "https://github.com/NvChad/example_config"
      local install_path = vim.fn.stdpath "config" .. "/lua/custom"
      vim.fn.system { "git", "clone", "--depth", "1", repo, install_path }

      -- delete .git from that repo
      vim.fn.delete(vim.fn.stdpath "config" .. "/lua/custom/.git", "rf")
      vim.cmd "redraw|echo '' | echo 'successfully installed chadrc template!'"
    else
      local custom_dir = vim.fn.stdpath "config" .. "/lua/custom/"
      vim.fn.mkdir(custom_dir, "p")

      local file = io.open(custom_dir .. "chadrc.lua", "w")
      file:write("local M = {}\n M.ui = {theme = 'onedark'}\n return M"):close()
    end
  end
end

return M
