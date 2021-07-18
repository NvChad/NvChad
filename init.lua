require "options"

local async
async =
    vim.loop.new_async(
    vim.schedule_wrap(
        function()
            require "pluginList"
            require "plugins.bufferline"
            require "mappings"
            require("utils").hideStuff()

            async:close()
        end
    )
)
async:send()
