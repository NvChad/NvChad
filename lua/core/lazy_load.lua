-- https://github.com/max397574/omega-nvim/blob/master/lua/omega/modules/ui/bufferline.lua
local lazy_load = function(tb)
   vim.api.nvim_create_autocmd(tb.events, {
      pattern = "*",
      group = vim.api.nvim_create_augroup(tb.augroup_name, {}),
      callback = function()
         if tb.condition() then
            vim.api.nvim_del_augroup_by_name(tb.augroup_name)

            -- dont defer for treesitter as it will show slow highlighting
            -- This deferring only happens only when we do "nvim filename"
            if tb.plugins ~= "nvim-treesitter" then
               vim.defer_fn(function()
                  vim.cmd("PackerLoad " .. tb.plugins)
               end, 0)
            else
               vim.cmd("PackerLoad " .. tb.plugins)
            end
         end
      end,
   })
end

local M = {}

M.bufferline = function()
   lazy_load {
      events = { "BufNewFile", "BufAdd", "TabEnter" },
      augroup_name = "BufferLineLazy",
      plugins = "bufferline.nvim",

      condition = function()
         return #vim.fn.getbufinfo { buflisted = 1 } >= 2
      end,
   }
end

M.colorizer = function()
   lazy_load {
      events = { "BufRead", "BufNewFile" },
      augroup_name = "ColorizerLazy",
      plugins = "nvim-colorizer.lua",

      condition = function()
         local items = { "#", "rgb", "hsl" }

         for _, val in ipairs(items) do
            if vim.fn.search(val) ~= 0 then
               return true
            end
         end
      end,
   }
end

-- load certain plugins only when there's a file opened in the buffer
-- if "nvim-file" is executed -> load the plugin after nvim gui loads
-- This gives an instant preview of nvim with the file opened

M.on_file_open = function()
   lazy_load {
      events = { "BufRead", "BufWinEnter", "BufNewFile" },
      augroup_name = "BeLazyOnFileOpen",
      plugins = "nvim-lsp-installer indent-blankline.nvim",

      condition = function()
         local file = vim.fn.expand "%"
         return file ~= "NvimTree_1" and file ~= "[packer]" and file ~= ""
      end,
   }
end

M.treesitter = function()
   lazy_load {
      events = { "BufRead", "BufWinEnter", "BufNewFile" },
      augroup_name = "Treesitter_lazy",
      plugins = "nvim-treesitter",

      condition = function()
         local file = vim.fn.expand "%"
         return file ~= "NvimTree_1" and file ~= "[packer]" and file ~= ""
      end,
   }
end

M.gitsigns = function()
   -- taken from https://github.com/max397574
   vim.api.nvim_create_autocmd({ "BufRead" }, {
      callback = function()
         local function onexit(code, _)
            if code == 0 then
               vim.schedule(function()
                  require("packer").loader "gitsigns.nvim"
               end)
            end
         end
         local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
         if lines ~= { "" } then
            vim.loop.spawn("git", {
               args = {
                  "ls-files",
                  "--error-unmatch",
                  vim.fn.expand "%:p:h",
               },
            }, onexit)
         end
      end,
   })
end

return M
