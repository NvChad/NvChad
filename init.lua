local ok, err = pcall(require, "core")

if not ok then
   error("Error loading core" .. "\n\n" .. err)
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
