local M = {}

M.disabled = {n = {["<leader>h"] = "", ["<leader>f"] = "", ["<leader>uu"] = ""}}

M.general = {
  i = {["jj"] = {"<ESC>", "better escape"}},
  t = {["<Esc><Esc>"] = {"<C-Bslash><C-n>", "back to normal", opts = {noremap = true, expr = true}}},
  n = {["<leader>cc"] = {'i#%%<CR>', "create cell"}}
  -- n = { ["<ESC><ESC>"] = { "<cmd> set hlsearch! <CR>", "toggle search highlight" } }
}
M.comment = {
  -- toggle comment in both modes
  n = {["<C-_>"] = {function() require("Comment.api").toggle.linewise.current() end, "toggle comment"}},
  v = {["<C-_>"] = {"<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", "toggle comment"}}
}

M.gitsigns = {
  n = {
    ["]c"] = {" <cmd>Gitsigns next_hunk<CR>", "next hunk"},
    ["[c"] = {"<cmd>Gitsigns prev_hunk<CR>", "prev hunk"},
    ["<leader>hs"] = {"<cmd> Gitsigns stage_hunk <CR>", "stage hunk"},
    ["<leader>hu"] = {"<cmd> Gitsigns undo_stage_hunk <CR>", "undo stage buffer"},
    ["<leader>hr"] = {"<cmd> Gitsigns reset_hunk <CR>", "reset hunk"},
    ["<leader>hS"] = {"<cmd> Gitsigns stage_buffer <CR>", "stage buffer"},
    ["<leader>hR"] = {"<cmd> Gitsigns reset_buffer <CR>", "reset buffer"},
    ["<leader>hp"] = {"<cmd> Gitsigns preview_hunk <CR>", "preview hunk"},
    ["<leader>hb"] = {"<cmd> lua require'gitsigns'.blame_line{full=true} <CR>", "blame"},
    ["<leader>hd"] = {"<cmd> Gitsigns diffthis<CR>", "diff this"},
    ["<leader>hD"] = {"<cmd> lua require'gitsigns'.diffthis('~')<CR>", "diff this HEAD"},
    ["<leader>tb"] = {"<cmd> Gitsigns toggle_current_line_blame<CR>", "line blame toggle"},
    ["<leader>td"] = {"<cmd> Gitsigns toggle_deleted<CR>", "toggle detected"}
  },
  o = {["ih"] = {"<cmd> Gitsigns select_hunk<CR>", "select hunk1"}},
  x = {["ih"] = {"<cmd> Gitsigns select_hunk<CR>", "select hunk2"}}
}

M.lspconfig = {
  n = {
    ["gD"] = {function() vim.lsp.buf.declaration() end, "   lsp declaration"},
    ["gd"] = {function() vim.lsp.buf.definition() end, "   lsp definition"},
    ["gi"] = {function() vim.lsp.buf.implementation() end, "   lsp implementation"},
    ["gr"] = {function() vim.lsp.buf.references() end, "   lsp references"},
    ["K"] = {function() vim.lsp.buf.hover() end, "   lsp hover"},
    ["[d"] = {function() vim.diagnostic.goto_prev() end, "   goto prev"},
    ["]d"] = {function() vim.diagnostic.goto_next() end, "   goto_next"},
    ["<leader>D"] = {function() vim.lsp.buf.type_definition() end, "   lsp definition type"},
    ["<leader>q"] = {function() vim.diagnostic.setloclist() end, "   diagnostic setloclist"},
    ["<leader>ic"] = {function() vim.lsp.buf.incoming_calls() end, "   lsp incoming calls"},
    ["<leader>oc"] = {function() vim.lsp.buf.outgoing_calls() end, "   lsp outgoing calls"},
    ["<leader>ls"] = {function() vim.lsp.buf.signature_help() end, "   lsp signature_help"},
    ["<leader>ra"] = {function() require("nvchad.ui.renamer").open() end, "   lsp rename"},
    ["<leader>ca"] = {function() vim.lsp.buf.code_action() end, "   lsp code_action"},
    ["<leader>df"] = {function() vim.diagnostic.open_float() end, "   floating diagnostic"},
    ["<leader>fm"] = {function() vim.lsp.buf.formatting() end, "   lsp formatting"},
    ["<leader>wa"] = {function() vim.lsp.buf.add_workspace_folder() end, "   add workspace folder"},
    ["<leader>wr"] = {function() vim.lsp.buf.remove_workspace_folder() end, "   remove workspace folder"},
    ["<leader>wl"] = {
      function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, "   list workspace folders"
    }
  },
  v = {["<leader>fm"] = {function() vim.lsp.buf.range_formatting() end, "   lsp range formatting"}}
}

M.vimwiki = {
  n = {
    ["<leader>wf"] = {"<Plug>VimwikiNextLink", "vimwiki next link"}
    -- ["<cr>"] = { "<Plug>VimwikiFollowLink", "vimwiki follow link" },
  }
}

M.telescope = {
  n = {
    -- git
    ["<leader>gc"] = {"<cmd> Telescope git_commits <CR>", "   git commits"},
    ["<leader>gs"] = {"<cmd> Telescope git_status <CR>", "  git status"},
    ["<leader>ct"] = {"<cmd> Telescope tags <CR>", "show ctags"}
  }
}

M.slime = {
  n = {
    ["<leader><leader>a"] = {"<Plug>SlimeSendCell", "slime send cell"},
    ["<c-c><c-c>"] = {"<Plug>SlimeParagraphSend", "slime paragraph send"},
    ["<c-c>v"] = {"<Plug>SlimeConfig", "slime config"}
  },
  x = {["<c-c><c-c>"] = {"<Plug>SlimeRegionSend", "slime region send"}}
}

-- {
--   buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
--   silent = true,
--   noremap = true,
--   nowait = false,
--   -- all standard key binding opts are supported
-- }

M.jupyter = {
  n = {
    ["<leader><leader>R"] = {":JupyterRunFile <CR>", "jupyter run file"},
    ["<leader><leader>I"] = {":PythonImportThisFile <CR>", "jupyter import this file"},
    ["<leader><leader>d"] = {":JupyterCd %:p:h <CR>", "change dir to current file"},
    ["<leader><leader>s"] = {":JupyterSendCell <CR>", "jupyter send cell"},
    ["<leader><leader>E"] = {":JupyterSendRange <CR>", "jupyter send range"},
    ["<leader><leader>b"] = {":PythonSetBreak <CR>", "juyter set break"},
    ["<leader><leader>e"] = {"<Plug>JupyterRunTextObj", "jupyter run textObj"}
  },
  v = {["<leader><leader>e"] = {"<Plug>JupyterRunVisual", "jupyter run visual"}}
}

return M
