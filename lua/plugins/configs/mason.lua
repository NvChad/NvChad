local present, mason = pcall(require, "mason")

if not present then
  return
end

require("base46").load_highlight "mason"

local options = {
  ensure_installed = { "pyright" },

  ui = {
    icons = {
      package_pending = " ",
      package_installed = " ",
      package_uninstalled = " ﮊ",
    },

    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
      cancel_installation = "<C-c>",
    },
  },

  max_concurrent_installers = 10,
}

options = require("core.utils").load_override(options, "williamboman/mason")

mason.setup(options)
