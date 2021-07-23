require "options"

local chad_modules = {
    "pluginList",
    "mappings",
    "utils"
}

local async
async =
    vim.loop.new_async(
    vim.schedule_wrap(
        function()
            for i = 1, #chad_modules, 1 do
                 pcall(require, chad_modules[i])          
            end
            async:close()
        end
    )
)
async:send()
