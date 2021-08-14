local M = {}

-- 1st arg as current theme, 2nd as new theme
M.change_theme = function(current_theme, new_theme)
    if current_theme == nil or new_theme == nil then
        print "Error: Provide current and new theme name"
        return false
    end
    if current_theme == new_theme then
        return
    end

    local file = vim.fn.stdpath("config") .. "/lua/chadrc.lua"
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

-- reload themes without restarting vim
-- if no theme name given then reload the current theme
M.reload_theme = function(theme_name)
    local reload_plugin = require("utils").reload_plugin

    -- if theme name is empty or nil, then reload the current theme
    if (theme_name == nil or theme_name == "") then
        theme_name = vim.g.nvchad_theme
    end

    if not pcall(require, "themes/" .. theme_name) then
        print("No such theme ( " .. theme_name .. " )")
        return false
    end

    vim.g.nvchad_theme = theme_name

    -- reload the base16 theme
    local ok, base16 = pcall(require, "base16")
    if not ok then
        print("Error: Cannot load base16 plugin!")
        return false
    end
    base16(base16.themes(theme_name), true)

    if
        not reload_plugin {
            "highlights",
            "plugins.bufferline",
            "galaxyline",
            "plugins.statusline"
        }
     then
        print "Error: Not able to reload all plugins."
        return false
    end

    -- yes, this is very hacky, but due to new_async in
    -- https://github.com/glepnir/galaxyline.nvim/blob/main/lua/galaxyline/provider.lua#L5-L36
    -- it doesn't work properly and some statusline stuff dissapears
    local vcs = require("galaxyline.provider_vcs")
    local fileinfo = require("galaxyline.provider_fileinfo")
    local buffer = require("galaxyline.provider_buffer")
    local extension = require("galaxyline.provider_extensions")
    local whitespace = require("galaxyline.provider_whitespace")
    local lspclient = require("galaxyline.provider_lsp")
    _G.galaxyline_providers = {
        BufferIcon = buffer.get_buffer_type_icon,
        BufferNumber = buffer.get_buffer_number,
        FileTypeName = buffer.get_buffer_filetype,
        GitBranch = vcs.get_git_branch,
        DiffAdd = vcs.diff_add,
        DiffModified = vcs.diff_modified,
        DiffRemove = vcs.diff_remove,
        LineColumn = fileinfo.line_column,
        FileFormat = fileinfo.get_file_format,
        FileEncode = fileinfo.get_file_encode,
        FileSize = fileinfo.get_file_size,
        FileIcon = fileinfo.get_file_icon,
        FileName = fileinfo.get_current_file_name,
        SFileName = fileinfo.filename_in_special_buffer,
        LinePercent = fileinfo.current_line_percent,
        ScrollBar = extension.scrollbar_instance,
        VistaPlugin = extension.vista_nearest,
        WhiteSpace = whitespace.get_item,
        GetLspClient = lspclient.get_lsp_client
    }
    local diagnostic = require("galaxyline.provider_diagnostic")
    _G.galaxyline_providers.DiagnosticError = diagnostic.get_diagnostic_error
    _G.galaxyline_providers.DiagnosticWarn = diagnostic.get_diagnostic_warn
    _G.galaxyline_providers.DiagnosticHint = diagnostic.get_diagnostic_hint
    _G.galaxyline_providers.DiagnosticInfo = diagnostic.get_diagnostic_info

    return true
    -- open a buffer and close it to reload the statusline
    -- vim.cmd("new|bwipeout")
    -- commented out here as it will not work with telescope picker
end

return M
