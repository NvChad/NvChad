local gl = require('galaxyline')
local gls = gl.section
gl.short_line_list = {'LuaTree','vista','dbui'}

local colors = {
  bg = '#282c34',
  line_bg = '#282c34',
  fg = '#D8DEE9',
  fg_green = '#65a380',
  yellow = '#A3BE8C',
  cyan = '#22262C',
  darkblue = '#61afef',
  green = '#afd700',
  orange = '#FF8800',
  purple = '#252930',
  magenta = '#c678dd',
  blue = '#22262C';
  red = '#ec5f67',
  firored = '#DF8890',
  lightbg = '#3C4048',
  nord = '#81A1C1',
  nordYel = '#EBCB8B'
}

gls.left[1] = {
  FirstElement = {
    provider = function() return '' end,
    highlight = { colors.nord, colors.bg }
  },
}

gls.left[2] = {
  ViMode = {
    provider = function()
      return ' 󰀘  '
    end,
    highlight = {colors.bg,colors.nord},
     separator = ' ',
  separator_highlight = {colors.lightbg,colors.lightbg},
  },
}

gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.lightbg},
  },
}

gls.left[4] = {
  FileName = {
    provider = {'FileName','FileSize'},
  separator = ' ',
  separator_highlight = {colors.line_bg,colors.lightbg},
    condition = buffer_not_empty,
    highlight = {colors.fg,colors.lightbg}
  }
}

gls.left[5] = {
  rightRounded = {
    provider = function() return '' end,
    highlight = { colors.lightbg, colors.bg }
  },
}


gls.left[6] = {
  GitIcon = {
    provider = function() return '   ' end,
    condition = require('galaxyline.provider_vcs').check_git_workspace,
    highlight = {colors.fg,colors.line_bg},
  }
}

gls.left[7] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = require('galaxyline.provider_vcs').check_git_workspace,
    highlight = {'#8FBCBB',colors.line_bg,'bold'},
  }
}

local checkwidth = function()
  local squeeze_width  = vim.fn.winwidth(0) / 2
  if squeeze_width > 40 then
    return true
  end
  return false
end

gls.left[7] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = checkwidth,
    icon = '   ',
    highlight = {colors.nordYel,colors.line_bg},
  }
}

gls.left[8] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.orange,colors.line_bg},
  }
}

gls.left[9] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = checkwidth,
    icon = ' ',
    highlight = {colors.red,colors.line_bg},
  }
}

gls.left[10] = {
  LeftEnd = {
    provider = function() return ' ' end,
    separator = ' ',
    separator_highlight = {colors.line_bg,colors.line_bg},
    highlight = {colors.line_bg,colors.line_bg}
  }
}

gls.left[11] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}

gls.left[12] = {
  Space = {
    provider = function () return ' ' end,
     highlight = {colors.line_bg,colors.line_bg}
  }
}

gls.left[13] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}



gls.right[1] = {
  uwu = {
    provider = function() return '' end,
    highlight = { colors.firored, colors.bg }
  },
}

gls.right[2]= {
  FileFormat = {
    provider = 'FileFormat',
    highlight = {colors.bg,colors.firored},
  }
}

gls.right[3] = {
  PerCent = {
    provider = 'LinePercent',
    separator = ' ',
    separator_highlight = {colors.firored,colors.firored},
    highlight = {colors.bg,colors.fg},
  }
}
