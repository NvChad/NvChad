local status, project = pcall(require, "project_nvim")

if not status then
    vim.notify("没有找到 project_nvim")
    return
end

project.setup({
    detection_methods = { "pattern" },
    patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", ".sln" },
})

local status, telescope = pcall(require, "telescope")

if not status then
    vim.notify("没有找到 telescope")
    return
end

pcall(telescope.load_extension, "projects")
