-- try to call custom init
pcall(require, "custom")

local core_modules = {
   "core.options",
   "core.autocmds",
   "core.mappings",
}

for _, module in ipairs(core_modules) do
   local ok, err = pcall(require, module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end

-- tab:→\ ,trail:␣,extends:…,eol:⏎
-- tab:>- ,trail:~,extends:…,eol:↵
vim.opt.list = true
vim.opt.listchars:append "eol:⏎"
vim.opt.listchars:append "space: "
vim.opt.listchars:append "trail:␣"
vim.opt.listchars:append "extends:…"
vim.opt.listchars:append "nbsp:␣"
vim.opt.listchars:append "tab:>-"

vim.cmd "hi Visual guifg=#FFFF00 guibg=#0000FF gui=none"
vim.cmd "set noignorecase"

-- non plugin mappings
require("core.mappings").misc()
