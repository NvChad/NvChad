local plugin_status = require("chadrc").plugin_status

local present, _ = pcall(require, "packerInit")
local packer

if present then
    packer = require "packer"
else
    return false
end

local use = packer.use

return packer.startup(
    function()
        use {
            "wbthomason/packer.nvim",
            event = "VimEnter"
        }

        use {
            "jdhao/better-escape.vim",
            disable = plugin_status.better_esc,
            event = "InsertEnter",
            config = function()
                require "plugins.others".escape()
            end
        }

        use {
            "akinsho/nvim-bufferline.lua",
            disable = plugin_status.nvim_bufferline,
            after = "nvim-base16.lua",
            config = function()
                require "plugins.bufferline"
            end,
            setup = function()
                require "mappings".bufferline()
            end
        }

        use {
            "glepnir/galaxyline.nvim",
            disable = plugin_status.galaxyline,
            after = "nvim-base16.lua",
            config = function()
                require "plugins.statusline"
            end
        }

        -- color related stuff
        use {
            "siduck76/nvim-base16.lua",
            after = "packer.nvim",
            config = function()
                require "theme"
            end
        }

        use {
            "norcalli/nvim-colorizer.lua",
            disable = plugin_status.nvim_colorizer,
            event = "BufRead",
            config = function()
                require("plugins.others").colorizer()
            end
        }

        -- lsp stuff
        use {
            "nvim-treesitter/nvim-treesitter",
            event = "BufRead",
            config = function()
                require "plugins.treesitter"
            end
        }

        use {
            "kabouzeid/nvim-lspinstall",
            event = "BufRead"
        }

        use {
            "neovim/nvim-lspconfig",
            after = "nvim-lspinstall",
            config = function()
                require "plugins.lspconfig"
            end
        }

        use {
            "onsails/lspkind-nvim",
            disable = plugin_status.lspkind,
            event = "BufEnter",
            config = function()
                require("plugins.others").lspkind()
            end
        }

        use {
            "ray-x/lsp_signature.nvim",
            disable = plugin_status.lspsignature,
            after = "nvim-lspconfig",
            config = function()
                require("plugins.others").signature()
            end
        }

        -- load compe in insert mode only
        use {
            "hrsh7th/nvim-compe",
            event = "InsertEnter",
            config = function()
                require "plugins.compe"
            end,
            wants = "LuaSnip",
            requires = {
                {
                    "L3MON4D3/LuaSnip",
                    wants = "friendly-snippets",
                    event = "InsertCharPre",
                    config = function()
                        require "plugins.luasnip"
                    end
                },
                {
                    "rafamadriz/friendly-snippets",
                    event = "InsertCharPre"
                }
            }
        }

        use {
            "sbdchd/neoformat",
            disable = plugin_status.neoformat,
            cmd = "Neoformat",
            setup = function()
                require "mappings".neoformat()
            end
        }

        -- file managing , picker etc
        use {
            "kyazdani42/nvim-tree.lua",
            cmd = "NvimTreeToggle",
            config = function()
                require "plugins.nvimtree"
            end,
            setup = function()
                require "mappings".nvimtree()
            end
        }

        use {
            "kyazdani42/nvim-web-devicons",
            after = "nvim-base16.lua",
            config = function()
                require "plugins.icons"
            end
        }

        use {
            "nvim-lua/plenary.nvim",
            event = "BufRead"
        }
        use {
            "nvim-lua/popup.nvim",
            after = "plenary.nvim"
        }

        use {
            "nvim-telescope/telescope.nvim",
            cmd = "Telescope",
            requires = {
                {
                    "nvim-telescope/telescope-fzf-native.nvim",
                    run = "make"
                },
                {
                    "nvim-telescope/telescope-media-files.nvim"
                }
            },
            config = function()
                require "plugins.telescope"
            end,
            setup = function()
                require "mappings".telescope()
            end
        }

        -- git stuff
        use {
            "lewis6991/gitsigns.nvim",
            disable = plugin_status.gitsigns,
            after = "plenary.nvim",
            config = function()
                require "plugins.gitsigns"
            end
        }

        -- misc plugins
        use {
            "akinsho/nvim-toggleterm.lua",
            event = "BufWinEnter",
            config = function()
                require "plugins.toggleterm"
            end,
            setup = function()
                require "mappings".toggleterm()
            end
        }
        use {
            "windwp/nvim-autopairs",
            after = "nvim-compe",
            config = function()
                require "plugins.autopairs"
            end
        }

        use {
            "andymass/vim-matchup",
            disable = plugin_status.vim_matchup,
            event = "CursorMoved"
        }

        use {
            "terrortylor/nvim-comment",
            disable = plugin_status.nvim_comment,
            cmd = "CommentToggle",
            config = function()
                require("plugins.others").comment()
            end,
            setup = function()
                require "mappings".comment_nvim()
            end
        }

        use {
            "glepnir/dashboard-nvim",
            disable = plugin_status.dashboard_nvim,
            cmd = {
                "Dashboard",
                "DashboardNewFile",
                "DashboardJumpMarks",
                "SessionLoad",
                "SessionSave"
            },
            setup = function()
                require "plugins.dashboard"
                require "mappings".dashboard()
            end
        }

        -- load autosave only if its globally enabled
        use {
            disable = plugin_status.autosave_nvim,
            "Pocco81/AutoSave.nvim",
            config = function()
                require "plugins.autosave"
            end,
            cond = function()
                return vim.g.auto_save == true
            end
        }

        -- smooth scroll
        use {
            "karb94/neoscroll.nvim",
            disable = plugin_status.neoscroll_nvim,
            event = "WinScrolled",
            config = function()
                require("plugins.others").neoscroll()
            end
        }

        use {
            "Pocco81/TrueZen.nvim",
            disable = plugin_status.truezen_nvim,
            cmd = {
                "TZAtaraxis",
                "TZMinimalist",
                "TZFocus"
            },
            config = function()
                require "plugins.zenmode"
            end,
            setup = function()
                require "mappings".truezen()
            end
        }

        --   use "alvan/vim-closetag" -- for html autoclosing tag

        use {
            "lukas-reineke/indent-blankline.nvim",
            disable = plugin_status.blankline,
            event = "BufRead",
            setup = function()
                require("plugins.others").blankline()
            end
        }

        use {
            "tpope/vim-fugitive",
            disable = plugin_status.vim_fugitive,
            cmd = {
                "Git"
            },
            setup = function()
                require "mappings".fugitive()
            end
        }

        -- terminal
        use {
          "akinsho/nvim-toggleterm.lua",
          event = "BufWinEnter",
          config = function()
            require "plugins.terminal"
          end
        }
    end
)
