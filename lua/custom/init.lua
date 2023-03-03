-- example file i.e lua/custom/init.lua
-- load your globals, autocmds here or anything .__.
-- lua, default settings
vim.cmd([[
    function! CommandBuffer(cmd)
      redir => message
      silent execute a:cmd
      redir END
      if empty(message)
        echoerr "no output"
      else
        " use "new" instead of "tabnew" below if you prefer split windows instead of tabs
        new
        setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
        :nnoremap <buffer> q ZQ
        :nnoremap <buffer> <Esc> ZQ
        let message = trim(message)
        silent put=message
        silent execute "normal" "gg"
        silent execute "normal" 3..'"_dd'
      endif
    endfunction
    command! -nargs=+ -complete=command CommandBuffer call CommandBuffer(<q-args>)
]])

vim.cmd([[
    function! CommandRegister(cmd)
      redir => message
      silent execute a:cmd
      redir END
      let @" = trim(message)
      if empty(message)
        echoerr "no output."
      else
        echomsg "copied."
      endif
    endfunction
    command! -nargs=+ -complete=command CommandRegister call CommandRegister(<q-args>)
]])
-- if you set expr=true it runs the command.
-- TODO: check whichkey
vim.api.nvim_set_keymap('n', '<space>cb', ':CommandBuffer ', {expr = false, noremap = true}) -- command to buffer
vim.api.nvim_set_keymap('n', '<space>cr', ':CommandRegister ', {expr = false, noremap = true}) -- command to register
vim.api.nvim_set_keymap('n', '<space>ub', ':CommandBuffer !', {expr = false, noremap = true}) -- unix to buffer
vim.api.nvim_set_keymap('n', '<space>ur', ':CommandRegister !', {expr = false, noremap = true}) -- unix to register

local options_ok, options = pcall(require, "custom.options")
if not options_ok then print(vim.inspect(options)) end

-- overriding nvchad_ui/lsp.lua
-- TODO: there is not better place to do it?
vim.diagnostic.config {
  virtual_text = false,
  float = {source = "always", border = "rounded"},
  signs = false,
  underline = true,
  update_in_insert = false
}
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {border = "rounded"})
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = "rounded",
  focusable = false,
  relative = "cursor"
})

-- local win = require "lspconfig.ui.windows"
-- local _default_opts = win.default_opts
--
-- win.default_opts = function(options)
--    local opts = _default_opts(options)
--    opts.border = "rounded"
--    return opts
-- end
-- end of UI customization
--

-- create_extmark function to create a new extmark
-- function create_extmark(bufnr, line, col, virt_text, virt_text_pos)
--   local ns_id = vim.api.nvim_create_namespace("my_extmarks")
--   local mark_id = vim.api.nvim_buf_set_extmark(bufnr, ns_id, line, col, { virt_text = virt_text, virt_text_pos = virt_text_pos })
--   return ns_id, mark_id
-- end

function create_extmark()
    local bufnr = vim.api.nvim_get_current_buf()
    local bufname = vim.api.nvim_buf_get_name(bufnr)
    if bufname == '' then
        print('Cannot create extmark: buffer is empty')
        return
    end
    local ns_id = vim.api.nvim_create_namespace('my_extmark_ns')
    local cursor_pos = vim.api.nvim_win_get_cursor(0)
    -- vim_buf_set_extmark({buffer}, {ns_id}, {line}, {col}, {*opts})
    local mark_id = vim.api.nvim_buf_set_extmark(bufnr, ns_id, cursor_pos[1], cursor_pos[2], {ui_watched=true})
    print('Created extmark with ID:', mark_id)
end

-- list_extmarks function to list all extmarks in the current buffer
function list_extmarks()
  local ns_id = vim.api.nvim_create_namespace("my_extmark_ns")
  local bufnr = vim.api.nvim_get_current_buf()
  local extmarks = vim.api.nvim_buf_get_extmarks(bufnr, ns_id, 0, -1, {})

  for _, extmark in ipairs(extmarks) do
    local extmark_id = extmark[1]
    local extmark_row = extmark[2]
    local extmark_col = extmark[3]
    print("ID: " .. extmark_id .. " line: " .. extmark_row .. " col: " .. extmark_col)
  end
end

