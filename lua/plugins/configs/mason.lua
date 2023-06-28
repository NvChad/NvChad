local options = {
  ensure_installed = { "lua-language-server" }, -- not an option from mason.nvim

-- Note: Avoid setting `PATH="prepend"|"append"` here.
-- To change the location of the mason/bin directory, update the 'place_mason_bin' option
-- in 'custom/chadrc.lua'. If you must set it here, ensure 'place_mason_bin' in 'custom/chadrc.lua'
-- is set to 'skip' to prevent duplicate mason/bin paths.
  PATH = "skip",

  ui = {
    icons = {
      package_pending = " ",
      package_installed = "󰄳 ",
      package_uninstalled = " 󰚌",
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

return options
