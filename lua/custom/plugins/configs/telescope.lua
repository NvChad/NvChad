return function()
    local actions = require('telescope.actions')
    return {
        defaults = {
            mappings = {
                i = {
                    ["<Esc>"] = actions.close
                }
            }
        }
    }
end
