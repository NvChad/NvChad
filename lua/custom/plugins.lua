local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "pyright",
        "debugpy",
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function ()
      require "plugins.configs.telescope"
      require "custom.config.telescope"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.config.lspconfig"
    end
  },
  {
    "python-lsp/python-lsp-server",
    ft = {"python"}
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.config.rust-tools"
    end,
    config = function (_, opts)
      require "rust-tools".setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap",
    config = function (_, _)
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-ui",
    },
    config = function (_, _)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings("dap_python")
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function (_, opts)
      local crates = require("crates")
      crates.setup(opts)
      crates.show()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function ()
      local M = require("plugins.configs.cmp")
      table.insert(M.sources, {name = "crates"})
      return M
    end
  },
  {
    "github/copilot.vim",
    event = "InsertEnter",
    config = function (_, opts)
      vim.g.copilot_assume_mapped = true 
      vim.g.copilot_filetypes = { ["*"] = false, ["javascript"] = true, ["typescript"] = true, ["lua"] = false, ["rust"] = true, ["elixir"] = true, ["erlang"] = true, ["terraform"] = true, ["go"] = true, ["python"] = true, }

    end
  },
}

return plugins
