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
            event = "InsertEnter",
            config = function()
                require "plugins.others".escape()
            end
        }

        use {
            "akinsho/nvim-bufferline.lua",
            after = "nvim-base16.lua",
            config = function()
                require "plugins.bufferline"
            end
        }

        use {
            "glepnir/galaxyline.nvim",
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
            event = "BufRead",
            config = function()
                require("plugins.others").colorizer()
            end
        }

        -- language related plugins
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
            event = "BufRead",
            config = function()
                require("plugins.others").lspkind()
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
            cmd = "Neoformat"
        }

        -- file managing , picker etc
        use {
            "kyazdani42/nvim-tree.lua",
            cmd = "NvimTreeToggle",
            config = function()
                require "plugins.nvimtree"
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
            config = function()
                require "plugins.telescope"
            end
        }

        use {
            "nvim-telescope/telescope-fzf-native.nvim",
            run = "make",
            cmd = "Telescope"
        }
        use {
            "nvim-telescope/telescope-media-files.nvim",
            cmd = "Telescope"
        }

        -- git stuff
        use {
            "lewis6991/gitsigns.nvim",
            after = "plenary.nvim",
            config = function()
                require "plugins.gitsigns"
            end
        }

        -- misc plugins
        use {
            "windwp/nvim-autopairs",
            after = "nvim-compe",
            config = function()
                require "plugins.autopairs"
            end
        }

        use {
            "andymass/vim-matchup",
            event = "CursorMoved"
        }

        use {
            "terrortylor/nvim-comment",
            cmd = "CommentToggle",
            config = function()
                require("plugins.others").comment()
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
                require "plugins.dashboard"
            end
        }

        use {
            "dstein64/vim-startuptime",
            cmd = "StartupTime"
        }

        -- load autosave only if its globally enabled
        use {
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
            event = "WinScrolled",
            config = function()
                require("plugins.others").neoscroll()
            end
        }

        use {
            "Pocco81/TrueZen.nvim",
            cmd = {
                "TZAtaraxis",
                "TZMinimalist",
                "TZFocus"
            },
            config = function()
                require "plugins.zenmode"
            end
        }

        --   use "alvan/vim-closetag" -- for html autoclosing tag

        use {
            "lukas-reineke/indent-blankline.nvim",
            event = "BufRead",
            setup = function()
                require("plugins.others").blankline()
            end
        }

        use {
            "tpope/vim-fugitive",
            cmd = {
                "Git"
            }
        }
    end
)
