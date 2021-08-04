local M = {}

-- reload a plugin ( will try to load even if not loaded)
-- can take a string or list ( table )
-- return true or false
M.reload_plugin = function(plugins)
    local status = true
    local function _reload_plugin(plugin)
        local loaded = package.loaded[plugin]
        if loaded then
            package.loaded[plugin] = nil
        end
        if not pcall(require, plugin) then
            print("Error: Cannot load " .. plugin .. " plugin!")
            status = false
        end
    end

    if type(plugins) == "string" then
        _reload_plugin(plugins)
    elseif type(plugins) == "table" then
        for _, plugin in ipairs(plugins) do
            _reload_plugin(plugin)
        end
    end
    return status
end

-- return a table of available themes
M.list_themes = function(return_type)
    local themes = {}
    -- folder where theme files are stored
    local themes_folder = vim.fn.stdpath("config") .. "/lua/themes"
    -- list all the contents of the folder and filter out files with .lua extension, then append to themes table
    local fd = vim.loop.fs_scandir(themes_folder)
    if fd then
        while true do
            local name, typ = vim.loop.fs_scandir_next(fd)
            if name == nil then
                break
            end
            if typ ~= "directory" and string.find(name, ".lua") then
                -- return the table values as keys if specified
                if return_type == "keys_as_value" then
                    themes[vim.fn.fnamemodify(name, ":r")] = true
                else
                    table.insert(themes, vim.fn.fnamemodify(name, ":r"))
                end
            end
        end
    end
    return themes
end

-- 1st arg - r or w
-- 2nd arg - file path
-- 3rd arg - content if 1st arg is w
-- return file data on read, nothing on write
M.file = function(mode, filepath, content)
    local data
    local fd = assert(vim.loop.fs_open(filepath, mode, 438))
    local stat = assert(vim.loop.fs_fstat(fd))
    if stat.type ~= "file" then
        data = false
    else
        if mode == "r" then
            data = assert(vim.loop.fs_read(fd, stat.size, 0))
        else
            assert(vim.loop.fs_write(fd, content, 0))
            data = true
        end
    end
    assert(vim.loop.fs_close(fd))
    return data
end

-- 1st arg as current theme, 2nd as new theme
M.change_theme = function(current_theme, new_theme)
    if current_theme == nil or new_theme == nil then
        print "Error: Provide current and new theme name"
        return false
    end
    if current_theme == new_theme then
        return
    end

    local file = vim.fn.stdpath("config") .. "/lua/user_config.lua"
    -- store in data variable
    local data = assert(M.file("r", file))
    local find = "theme = .?" .. current_theme .. ".?"
    local replace = 'theme = "' .. new_theme .. '"'
    local content = string.gsub(data, find, replace)
    -- see if the find string exists in file
    if content == data then
        print("Error: Cannot change default theme with " .. new_theme .. ", edit " .. file .. " manually")
        return false
    else
        assert(M.file("w", file, content))
    end
end

M.clear_cmdline = function()
    vim.defer_fn(
        function()
            vim.cmd("echo")
        end,
        0
    )
end

return M
