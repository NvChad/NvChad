local M = {}

local function bool2str(bool)
  return bool and "on" or "off"
end
local function ui_notify(silent, ...)
  return not silent and vim.notify(...)
end

--- Toggle notifications for UI toggles
---@param silent? boolean if true then don't sent a notification
function M.notifications(silent)
  local features = assert(require("astrocore").config.features)
  features.notifications = not features.notifications
  ui_notify(silent, ("Notifications %s"):format(bool2str(features.notifications)))
end

--- Toggle autopairs
---@param silent? boolean if true then don't sent a notification
function M.autopairs(silent)
  local ok, autopairs = pcall(require, "nvim-autopairs")
  if ok then
    if autopairs.state.disabled then
      autopairs.enable()
    else
      autopairs.disable()
    end
    ui_notify(silent, ("autopairs %s"):format(bool2str(not autopairs.state.disabled)))
  else
    ui_notify(silent, "autopairs not available")
  end
end

--- Toggle background="dark"|"light"
---@param silent? boolean if true then don't sent a notification
function M.background(silent)
  vim.go.background = vim.go.background == "light" and "dark" or "light"
  ui_notify(silent, ("background=%s"):format(vim.go.background))
end

--- Toggle cmp entrirely
---@param silent? boolean if true then don't sent a notification
function M.cmp(silent)
  local features = assert(require("astrocore").config.features)
  features.cmp = not features.cmp
  local ok, _ = pcall(require, "cmp")
  ui_notify(silent, ok and ("Global completion %s"):format(bool2str(features.cmp)) or "completion not available")
end

--- Toggle buffer local cmp
---@param bufnr? integer the buffer to toggle cmp completion on
---@param silent? boolean if true then don't sent a notification
function M.buffer_cmp(bufnr, silent)
  bufnr = (bufnr and bufnr ~= 0) and bufnr or vim.api.nvim_win_get_buf(0)
  if vim.b[bufnr].cmp_enabled == nil then
    vim.b[bufnr].cmp_enabled = require("astrocore").config.features.cmp
  end
  vim.b[bufnr].cmp_enabled = not vim.b[bufnr].cmp_enabled
  local ok, _ = pcall(require, "cmp")
  ui_notify(
    silent,
    ok and ("Buffer completion %s"):format(bool2str(vim.b[bufnr].cmp_enabled)) or "completion not available"
  )
end

--- Toggle showtabline=2|0
---@param silent? boolean if true then don't sent a notification
function M.tabline(silent)
  vim.opt.showtabline = vim.opt.showtabline:get() == 0 and 2 or 0
  ui_notify(silent, ("tabline %s"):format(bool2str(vim.opt.showtabline:get() == 2)))
end

--- Toggle conceal=2|0
---@param silent? boolean if true then don't sent a notification
function M.conceal(silent)
  vim.opt.conceallevel = vim.opt.conceallevel:get() == 0 and 2 or 0
  ui_notify(silent, ("conceal %s"):format(bool2str(vim.opt.conceallevel:get() == 2)))
end

--- Toggle laststatus=3|2|0
---@param silent? boolean if true then don't sent a notification
function M.statusline(silent)
  local laststatus = vim.opt.laststatus:get()
  local status
  if laststatus == 0 then
    vim.opt.laststatus = 2
    status = "local"
  elseif laststatus == 2 then
    vim.opt.laststatus = 3
    status = "global"
  elseif laststatus == 3 then
    vim.opt.laststatus = 0
    status = "off"
  end
  ui_notify(silent, ("statusline %s"):format(status))
end

--- Toggle signcolumn="auto"|"no"
---@param silent? boolean if true then don't sent a notification
function M.signcolumn(silent)
  if vim.wo.signcolumn == "no" then
    vim.wo.signcolumn = "yes"
  elseif vim.wo.signcolumn == "yes" then
    vim.wo.signcolumn = "auto"
  else
    vim.wo.signcolumn = "no"
  end
  ui_notify(silent, ("signcolumn=%s"):format(vim.wo.signcolumn))
end

--- Set the indent and tab related numbers
---@param silent? boolean if true then don't sent a notification
function M.indent(silent)
  local input_avail, input = pcall(vim.fn.input, "Set indent value (>0 expandtab, <=0 noexpandtab): ")
  if input_avail then
    local indent = tonumber(input)
    if not indent or indent == 0 then
      return
    end
    vim.bo.expandtab = (indent > 0) -- local to buffer
    indent = math.abs(indent)
    vim.bo.tabstop = indent -- local to buffer
    vim.bo.softtabstop = indent -- local to buffer
    vim.bo.shiftwidth = indent -- local to buffer
    ui_notify(silent, ("indent=%d %s"):format(indent, vim.bo.expandtab and "expandtab" or "noexpandtab"))
  end
end

--- Change the number display modes
---@param silent? boolean if true then don't sent a notification
function M.number(silent)
  local number = vim.wo.number -- local to window
  local relativenumber = vim.wo.relativenumber -- local to window
  if not number and not relativenumber then
    vim.wo.number = true
  elseif number and not relativenumber then
    vim.wo.relativenumber = true
  elseif number and relativenumber then
    vim.wo.number = false
  else -- not number and relativenumber
    vim.wo.relativenumber = false
  end
  ui_notify(silent, ("number %s, relativenumber %s"):format(bool2str(vim.wo.number), bool2str(vim.wo.relativenumber)))
end

--- Toggle spell
---@param silent? boolean if true then don't sent a notification
function M.spell(silent)
  vim.wo.spell = not vim.wo.spell -- local to window
  ui_notify(silent, ("spell %s"):format(bool2str(vim.wo.spell)))
end

--- Toggle paste
---@param silent? boolean if true then don't sent a notification
function M.paste(silent)
  local paste = not assert(vim.opt.paste):get()
  vim.opt.paste = paste -- local to window
  ui_notify(silent, ("paste %s"):format(bool2str(paste)))
end

--- Toggle wrap
---@param silent? boolean if true then don't sent a notification
function M.wrap(silent)
  vim.wo.wrap = not vim.wo.wrap -- local to window
  ui_notify(silent, ("wrap %s"):format(bool2str(vim.wo.wrap)))
end

--- Toggle syntax highlighting and treesitter
---@param bufnr? integer the buffer to toggle syntax on
---@param silent? boolean if true then don't sent a notification
function M.buffer_syntax(bufnr, silent)
  -- HACK: this should just be `bufnr = bufnr or 0` but it looks like `vim.treesitter.stop` has a bug with `0` being current
  bufnr = (bufnr and bufnr ~= 0) and bufnr or vim.api.nvim_win_get_buf(0)
  local ts_avail, parsers = pcall(require, "nvim-treesitter.parsers")
  local astrolsp_avail, lsp_toggle = pcall(require, "astrolsp.toggles")
  if vim.bo[bufnr].syntax == "off" then
    if ts_avail and parsers.has_parser() then
      vim.treesitter.start(bufnr)
    end
    vim.bo[bufnr].syntax = "on"
    if astrolsp_avail and not vim.b[bufnr].semantic_tokens then
      lsp_toggle.buffer_semantic_tokens(bufnr, true)
    end
  else
    if ts_avail and parsers.has_parser() then
      vim.treesitter.stop(bufnr)
    end
    vim.bo[bufnr].syntax = "off"
    if astrolsp_avail and vim.b[bufnr].semantic_tokens then
      lsp_toggle.buffer_semantic_tokens(bufnr, true)
    end
  end
  ui_notify(silent, ("syntax %s"):format(vim.bo[bufnr].syntax))
end

--- Toggle URL/URI syntax highlighting rules
---@param silent? boolean if true then don't sent a notification
function M.url_match(silent)
  local features = assert(require("astrocore").config.features)
  features.highlighturl = not features.highlighturl
  vim.tbl_map(require("astrocore").set_url_match, vim.api.nvim_list_wins())
  ui_notify(silent, ("URL highlighting %s"):format(bool2str(features.highlighturl)))
end

local last_active_foldcolumn
--- Toggle foldcolumn=0|1
---@param silent? boolean if true then don't sent a notification
function M.foldcolumn(silent)
  local curr_foldcolumn = vim.wo.foldcolumn
  if curr_foldcolumn ~= "0" then
    last_active_foldcolumn = curr_foldcolumn
  end
  vim.wo.foldcolumn = curr_foldcolumn == "0" and (last_active_foldcolumn or "1") or "0"
  ui_notify(silent, ("foldcolumn=%s"):format(vim.wo.foldcolumn))
end

--- Toggle diagnostics
---@param silent? boolean if true then don't sent a notification
function M.diagnostics(silent)
  local features = require("astrocore").config.features --[[@as AstroCoreFeatureOpts]]
  features.diagnostics_mode = (features.diagnostics_mode - 1) % 4
  vim.diagnostic.config(require("astrocore").diagnostics[features.diagnostics_mode])
  if features.diagnostics_mode == 0 then
    ui_notify(silent, "diagnostics off")
  elseif features.diagnostics_mode == 1 then
    ui_notify(silent, "only status diagnostics")
  elseif features.diagnostics_mode == 2 then
    ui_notify(silent, "virtual text off")
  else
    ui_notify(silent, "all diagnostics on")
  end
end

return M
