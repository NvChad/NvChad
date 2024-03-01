require "core"

local custom_init_path=vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath=vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"




-- treesitter

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed={ "c","lua","vim","vimdoc","query","rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install=false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install=true,

  -- List of parsers to ignore installing (or "all")
  ignore_install={ "javascript" },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir="/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight={
    enable=true,
    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable={ "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable=function(lang, buf)
      local max_filesize=100 * 1024 -- 100 KB
      local ok, stats=pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
      if ok and stats and stats.size > max_filesize then
        return true
      end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting=false,
  },
}

require('lualine').setup {
  options={
    icons_enabled=true,
    component_separators={
      left='',
      right=''
    },
    section_separators={
      left='',
      right=''
    },
    disabled_filetypes={
      statusline={},
      winbar={},
    },
    ignore_focus={},
    always_divide_middle=true,
    globalstatus=false,
    refresh={
      statusline=1000,
      tabline=1000,
      winbar=1000,
    }
  },
  sections={
    lualine_a={'mode'},
    lualine_b={'branch','diff','diagnostics'},
    lualine_c={'filename'},
    lualine_x={'encoding','fileformat','filetype'},
    lualine_y={'progress'},
    lualine_z={'location'}
  },
  inactive_sections={
    lualine_a={},
    lualine_b={},
    lualine_c={'filename'},
    lualine_x={'location'},
    lualine_y={},
    lualine_z={}
  },
  tabline={},
  winbar={},
  inactive_winbar={},
  extensions={}
}


--- theme
vim.cmd("colorscheme vscode");