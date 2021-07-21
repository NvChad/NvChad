require "options"

local chad_modules = {
    "pluginList",
    "plugins.bufferline",
    "mappings",
    "utils"
}

local async
async =
    vim.loop.new_async(
    vim.schedule_wrap(
        function()
            for i = 1, #chad_modules, 1 do
                local ok, res = xpcall(require, debug.traceback, chad_modules[i])
                if not (ok) then
                    print("Error loading module : " .. chad_modules[i])
                    print(res) -- print stack traceback of the error
                end
            end
            async:close()
        end
    )
)
async:send()
