return {
  statusline = {
    separator_style = "block", -- default/round/block/arrow
    overriden_modules = nil
  },
  -- lazyload it when there are 1+ buffers
  tabufline = {enabled = true, lazyload = true, overriden_modules = nil}
}
