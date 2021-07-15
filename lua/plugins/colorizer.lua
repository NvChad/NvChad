local colorizer
if
    not pcall(
        function()
            colorizer = require("colorizer")
        end
    )
 then
    return
end

colorizer.setup()
vim.cmd("ColorizerReloadAllBuffers")
