local user_cmd = vim.api.nvim_create_user_command
local cmd = vim.cmd

-- snapshot stuff
user_cmd("PackerSnapshot", function(info)
   require "plugins"
   require("packer").snapshot(info.args)
end, { nargs = "+" })

user_cmd("PackerSnapshotDelete", function(info)
   require "plugins"
   require("packer.snapshot").delete(info.args)
end, { nargs = "+" })

user_cmd("PackerSnapshotRollback", function(info)
   require "plugins"
   require("packer").rollback(info.args)
end, { nargs = "+" })

-- Add Packer commands because we are not loading it at startup

local packer_cmd = function(callback)
   return function()
      require "plugins"
      require("packer")[callback]()
   end
end

user_cmd("PackerClean", packer_cmd "clean", {})
user_cmd("PackerCompile", packer_cmd "compile", {})
user_cmd("PackerInstall", packer_cmd "install", {})
user_cmd("PackerStatus", packer_cmd "status", {})
user_cmd("PackerSync", packer_cmd "sync", {})
user_cmd("PackerUpdate", packer_cmd "update", {})

-- add NvChadUpdate command and mapping
cmd "silent! command! NvChadUpdate lua require('nvchad').update_nvchad()"
