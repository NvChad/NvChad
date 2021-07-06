local packer = require("packer")
local use = packer.use

return packer.startup(
    function()
        use "wbthomason/packer.nvim"

        use "akinsho/nvim-bufferline.lua"
        use "glepnir/galaxyline.nvim"

        -- color related stuff
        use "siduck76/nvim-base16.lua"

        use {
            "norcalli/nvim-colorizer.lua",
            event = "BufRead",
            config = function()
                require("colorizer").setup()
                vim.cmd("ColorizerReloadAllBuffers")
            end
        }

        -- language related plugins
        use {
            "nvim-treesitter/nvim-treesitter",
            event = "BufRead",
            config = function()
                require("treesitter-nvim").config()
            end
        }

        use {
            "neovim/nvim-lspconfig",
            event = "BufRead",
            config = function()
                require("nvim-lspconfig").config()
            end
        }

        use "kabouzeid/nvim-lspinstall"

        use {
            "onsails/lspkind-nvim",
            event = "BufRead",
            config = function()
                require("lspkind").init()
            end
        }

        -- load compe in insert mode only
        use {
            "hrsh7th/nvim-compe",
            event = "InsertEnter",
            config = function()
                require("compe-completion").config()
            end,
            wants = {"LuaSnip"},
            requires = {
                {
                    "L3MON4D3/LuaSnip",
                    wants = "friendly-snippets",
                    event = "InsertCharPre",
                    config = function()
                        require("compe-completion").snippets()
                    end
                },
                "rafamadriz/friendly-snippets"
            }
        }

        use {"sbdchd/neoformat", cmd = "Neoformat"}

        -- file managing , picker etc
        use {
            "kyazdani42/nvim-tree.lua",
            cmd = "NvimTreeToggle",
            config = function()
                require("nvimTree").config()
            end
        }

        use "kyazdani42/nvim-web-devicons"
        use {
            "nvim-telescope/telescope.nvim",
            requires = {
                {"nvim-lua/popup.nvim"},
                {"nvim-lua/plenary.nvim"},
                {"nvim-telescope/telescope-fzf-native.nvim", run = "make"},
                {"nvim-telescope/telescope-media-files.nvim"}
            },
            cmd = "Telescope",
            config = function()
                require("telescope-nvim").config()
            end
        }

        -- git stuff
        use {
            "lewis6991/gitsigns.nvim",
            event = "BufRead",
            config = function()
                require("gitsigns-nvim").config()
            end
        }

        -- misc plugins
        use {
            "windwp/nvim-autopairs",
            after = "nvim-compe",
            config = function()
                require("nvim-autopairs").setup()
                require("nvim-autopairs.completion.compe").setup(
                    {
                        map_cr = true,
                        map_complete = true -- insert () func completion
                    }
                )
            end
        }

        use {"andymass/vim-matchup", event = "CursorMoved"}

        use {
            "terrortylor/nvim-comment",
            cmd = "CommentToggle",
            config = function()
                require("nvim_comment").setup()
            end
        }

        use {
            "glepnir/dashboard-nvim",
            cmd = {
                "Dashboard",
                "DashboardNewFile",
                "DashboardJumpMarks",
                "SessionLoad",
                "SessionSave"
            },
            setup = function()
                require("dashboard").config()
            end
        }

        use {"tweekmonster/startuptime.vim", cmd = "StartupTime"}

        -- load autosave only if its globally enabled
        use {
            "Pocco81/AutoSave.nvim",
            config = function()
                require("zenmode").autoSave()
            end,
            cond = function()
                return vim.g.auto_save == true
            end
        }

        -- smooth scroll
        use {
            "karb94/neoscroll.nvim",
            event = "WinScrolled",
            config = function()
                require("neoscroll").setup()
            end
        }

        use {
            "Pocco81/TrueZen.nvim",
            cmd = {"TZAtaraxis", "TZMinimalist", "TZFocus"},
            config = function()
                require("zenmode").config()
            end
        }

        --   use "alvan/vim-closetag" -- for html autoclosing tag

        use {
            "lukas-reineke/indent-blankline.nvim",
            event = "BufRead",
            setup = function()
                require("misc-utils").blankline()
            end
        }
    end,
    {
        display = {
            border = {"┌", "─", "┐", "│", "┘", "─", "└", "│"}
        }
    }
)
