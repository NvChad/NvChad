local init_modules = {
   "core",
}

for _, module in ipairs(init_modules) do
   local ok, err = pcall(require, module)
   if not ok then
      error("Error loading " .. module .. "\n\n" .. err)
   end
end

-- This runs your userspace function within chadrc
-- It will 'likely' run after all configuration (though not guaranteed)
vim.cmd(' au VimEnter * lua require("chadrc").userspace()')
