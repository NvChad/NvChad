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
