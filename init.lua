-- load all options
require "options"

-- load stuff only if theme is initialized
if require "theme" then
    local async
    async =
        vim.loop.new_async(
        vim.schedule_wrap(
            function()
                require "pluginList"
                require "plugins.bufferline"
                require "highlights"
                require "mappings"
                require("utils").hideStuff()

                async:close()
            end
        )
    )
    async:send()
else
    -- otherwise run PackerSync
    require "pluginList"
    print("Now PackerSync will be executed, after completion, restart neovim.\n")
    vim.cmd("PackerSync")
end
