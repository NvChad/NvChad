-- load all options
require "options"

-- only try to load stuff if atleast base16 is initialized
-- TODO: Find a better way to trigger PackerSync
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
    -- otherwise run packer sync
    require "pluginList"
    print("Now PackerSync will be executed, after completion, restart neovim.\n")
    vim.cmd("PackerSync")
end
