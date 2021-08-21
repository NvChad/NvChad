local present, which_key = pcall(require, "which-key")
if not present then
   return
end

which_key.setup {
   icons = {
      breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
      separator = "➜ ", -- symbol used between a key and it's label
      group = "+", -- symbol prepended to a group
   },
   window = {
      border = "single", -- none, single, double, shadow
      position = "bottom", -- bottom, top
      margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
      padding = { 2, 2, 2, 1 }, -- extra window padding [top, right, bottom, left]
   },
   layout = {
      height = { min = 4, max = 20 }, -- min and max height of the columns
      width = { min = 9, max = 20 }, -- min and max width of the columns
      spacing = 6, -- spacing between columns
   },
   ignore_missing = false, -- enable this to hide mappings for which you didn't specify a label
   triggers = { "<leader>" }, -- or specifiy a list manually
}

local mappings = {
   ["/"] = { "CommentToggle" },
   ["W"] = { "PickTerm" },
   ["w"] = { "New Window" },
   ["v"] = { "Vert Term" },
   ["h"] = { "Hori Term" },
   ["n"] = { "Toggle No." },
   ["x"] = { "Toggle Theme" },
   ["l"] = { "SessionLoad" },
   ["s"] = { "SessionSave" },

   z = {
      name = "+Zen",
      f = { "TZFocus" },
      m = { "TZMinimalist" },
      z = { "TZAtaraxis" },
   },

   f = {
      name = "+Files",
      w = { "Live Grep" },
      n = { "New File" },
      f = { "Find File" },
      b = { "Buffers" },
      h = { "Help Tag" },
      o = { "Old File" },
      p = { "Media File" },
      m = { "Format File" },
   },

   g = {
      name = "+Git",
      s = { "Git" },
      h = { "DiffGet2" },
      l = { "DiffGet3" },
      b = { "GitBlame" },
      t = { "Status" },
      m = { "Commits" },
   },

   d = {
      name = "+Dashboard",
      b = { "Dashboard" },
      m = { "JumpMarks" },
      k = { "DefaultKeys" },
   },

   t = {
      name = "+Themes",
      h = { "Themes" },
      m = { "JumpMarks" },
   },

   u = {
      name = "+Chad",
      u = { "ChadUpdate" },
      k = { "ChadKeys" },
   },
}

for i = 0, 10 do
   mappings[tostring(i)] = "which_key_ignore"
end

which_key.register(mappings, { prefix = "<leader>" })
