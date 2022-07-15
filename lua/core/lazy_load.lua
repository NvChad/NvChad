local M = {}
local autocmd = vim.api.nvim_create_autocmd

-- This must be used for plugins that need to be loaded just after a file
-- ex : treesitter, lspconfig etc
M.lazy_load = function(tb)
   autocmd(tb.events, {
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

M.colorizer = function()
   M.lazy_load {
      events = { "BufRead", "BufNewFile" },
      augroup_name = "ColorizerLazy",
      plugins = "nvim-colorizer.lua",

      condition = function()
         local items = { "#", "rgb", "hsl", "rgba", "hsla" }

         for _, val in ipairs(items) do
            if vim.fn.search(val) ~= 0 then
               return true
            end
         end
      end,
   }
end

-- load certain plugins only when there's a file opened in the buffer
-- if "nvim filename" is executed -> load the plugin after nvim gui loads
-- This gives an instant preview of nvim with the file opened

M.on_file_open = function(plugin_name)
   M.lazy_load {
      events = { "BufRead", "BufWinEnter", "BufNewFile" },
      augroup_name = "BeLazyOnFileOpen" .. plugin_name,
      plugins = plugin_name,
      condition = function()
         local file = vim.fn.expand "%"
         return file ~= "NvimTree_1" and file ~= "[packer]" and file ~= ""
      end,
   }
end

-- lspinstaller & lspconfig cmds for lazyloading
M.lsp_cmds = {
   "LspInfo",
   "LspStart",
   "LspRestart",
   "LspStop",
   "LspInstall",
   "LspUnInstall",
   "LspUnInstallAll",
   "LspInstall",
   "LspInstallInfo",
   "LspInstallLog",
   "LspLog",
   "LspPrintInstalled",
}

M.treesitter_cmds = {
   "TSInstall",
   "TSBufEnable",
   "TSBufDisable",
   "TSEnable",
   "TSDisable",
   "TSModuleInfo",
}

M.gitsigns = function()
   -- taken from https://github.com/max397574
   autocmd({ "BufRead" }, {
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
