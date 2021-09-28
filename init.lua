local ok, err = pcall(require, "core")
if not ok then
   error("Error loading " .. module .. "\n\n" .. err)
end
