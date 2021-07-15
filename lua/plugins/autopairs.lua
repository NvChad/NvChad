local autopairs, autopairs_completion
if
    not pcall(
        function()
            autopairs = require "nvim-autopairs"
            autopairs_completion = require "nvim-autopairs.completion.compe"
        end
    )
 then
    return
end

autopairs.setup()
autopairs_completion.setup(
    {
        map_cr = true,
        map_complete = true -- insert () func completion
    }
)
