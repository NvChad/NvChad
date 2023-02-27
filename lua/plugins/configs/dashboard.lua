local present, projects = pcall(require, "dashboard")

if not present then
  return
end

local options = {
    theme = 'hyper',
    shortcut_type = 'number',
    config = {
      path = 'C:\\Users\\Admin\\telescope-projects.txt',
      week_header = {
       enable = true,
      },
      shortcut = {
        { desc = ' Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' Apps',
          group = 'DiagnosticHint',
          action = 'Telescope app',
          key = 'a',
        },
        {
          desc = ' dotfiles',
          group = 'Number',
          action = 'Telescope dotfiles',
          key = 'd',
        },
      },
    },
  }
options = require("core.utils").load_override(options, "glepnir/dashboard-nvim")

projects.setup(options)
