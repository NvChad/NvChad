local opt, g = vim.opt, vim.g
local opts = require("core.utils").load_config().options

local function load_nvim_opts(nvim_opts)
   for nvim_opt, set in pairs(nvim_opts) do
      opt[nvim_opt] = set
   end
end

-- options that cannot be set by the user
opt.shortmess:append "sI"
opt.whichwrap:append "<>[]hl"
opt.shadafile = "NONE"

-- if there is an error with the user config, fallback onto the default config
-- and print an error message
local nvim_opts_status, _ = pcall(load_nvim_opts, opts.nvim)
if not nvim_opts_status then
   opts = require("core.default_config").options
   load_nvim_opts(opts.nvim)
   print "Error: user config - `options` - `nvim`"
end

vim.schedule(function()
   opt.shadafile = require("core.utils").load_config().options.nvim.shadafile
   vim.cmd [[ silent! rsh ]]
end)

-- disable some builtin vim plugins
local disabled_built_ins = {
   "2html_plugin",
   "getscript",
   "getscriptPlugin",
   "gzip",
   "logipat",
   "netrw",
   "netrwPlugin",
   "netrwSettings",
   "netrwFileHandlers",
   "matchit",
   "tar",
   "tarPlugin",
   "rrhelper",
   "spellfile_plugin",
   "vimball",
   "vimballPlugin",
   "zip",
   "zipPlugin",
}

for _, plugin in pairs(disabled_built_ins) do
   g["loaded_" .. plugin] = 1
end
