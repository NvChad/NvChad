---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    -- zen mode toggle TODO: why doesn't this binding work 
    ["<leader>zz"] = {
      function()
        require("zen-mode").toggle()
      end,
      "zenmode"
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
