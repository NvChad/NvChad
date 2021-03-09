" Close buffer
nnoremap <silent>    <A-c> :BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout<CR>
" Close commands
"                          :BufferCloseAllButCurrent<CR>
"                          :BufferCloseBuffersRight<CR>
nnoremap mymap :lua require"bufferline".go_to_buffer(num)<CR>

nnoremap <silent>[b :BufferLineCycleNext<CR>
nnoremap <silent>b] :BufferLineCyclePrev<CR>

nnoremap <silent>[n :BufferLineMoveNext<CR>
nnoremap <silent>n] :BufferLineMovePrev<CR>

lua << EOF 

require'bufferline'.setup{
  options = {
    buffer_close_icon= '',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 14,
    max_prefix_length = 13, 
    tab_size = 18,
    enforce_regular_tabs = true ,
   view = "multiwindow" ,
    show_buffer_close_icons = true ,
    separator_style = "thin" 
    },

      highlights = {
        background = {
        guifg = comment_fg,
        guibg = '#282c34'
     },
      fill = {
        guifg = comment_fg,
        guibg = '#282c34' 
      },
        buffer_selected = {
        guifg = normal_fg,
        guibg =  '#3A3E44',
        gui = "bold"
      }, 
       separator_visible = {
        guifg = '#282c34' ,
        guibg = '#282c34'
        },
        separator_selected = {
        guifg = '#282c34'  ,
        guibg = '#282c34'
      },
      separator = {
        guifg = '#282c34' ,
        guibg = '#282c34' 
      },
      indicator_selected = {
         guifg = '#282c34' ,
        guibg = '#282c34'  
      },
        modified_selected = {
        guifg = string_fg,
        guibg = '#3A3E44'
      }
   };  
}



require('gitsigns').setup {
  signs = {
    add          = {hl = 'DiffAdd'   , text = '▌', numhl='GitSignsAddNr'},
    change       = {hl = 'DiffChange', text = '▌', numhl='GitSignsChangeNr'},
    delete       = {hl = 'DiffDelete', text = '_', numhl='GitSignsDeleteNr'},
    topdelete    = {hl = 'DiffDelete', text = '‾', numhl='GitSignsDeleteNr'},
    changedelete = {hl = 'DiffChange', text = '~', numhl='GitSignsChangeNr'},
  },
  numhl = false,
  keymaps = {
    -- Default keymap options
    noremap = true,
    buffer = true,

    ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'"},
    ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'"},

    ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
    ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
    ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
    ['n <leader>hp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
    ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line()<CR>',
  },
  watch_index = {
    interval = 100
  },
  sign_priority = 5,
  status_formatter = nil, -- Use default
}

EOF 
