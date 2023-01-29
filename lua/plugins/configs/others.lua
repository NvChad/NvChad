local M = {}

local load_override = require("core.utils").load_override
local utils = require "core.utils"

M.autopairs = function()
  local options = {
    fast_wrap = {},
    disable_filetype = { "TelescopePrompt", "vim" },
  }

  options = load_override(options, "windwp/nvim-autopairs")
  require("nvim-autopairs").setup(options)

  -- setup cmp for autopairs
  local cmp_autopairs = require "nvim-autopairs.completion.cmp"
  require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
end

M.blankline = function()
  dofile(vim.g.base46_cache .. "blankline")

  local options = {
    indentLine_enabled = 1,
    filetype_exclude = {
      "help",
      "terminal",
      "lazy",
      "lspinfo",
      "TelescopePrompt",
      "TelescopeResults",
      "mason",
      "",
    },
    buftype_exclude = { "terminal" },
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    show_current_context = true,
    show_current_context_start = true,
  }

  options = load_override(options, "lukas-reineke/indent-blankline.nvim")
  require("indent_blankline").setup(options)
end

M.colorizer = function()
  local options = {}
  options = load_override(options, "NvChad/nvim-colorizer.lua")
  require("colorizer").setup(options)

  -- execute colorizer as soon as possible
  vim.defer_fn(function()
    require("colorizer").attach_to_buffer(0)
  end, 0)
end

M.comment = function()
  require("Comment").setup(load_override({}, "numToStr/Comment.nvim"))
end

M.luasnip = function()
  local options = {
    history = true,
    updateevents = "TextChanged,TextChangedI",
  }

  options = load_override(options, "L3MON4D3/LuaSnip")
  require("luasnip").config.set_config(options)

  require("luasnip.loaders.from_vscode").lazy_load { paths = vim.g.luasnippets_path or "" }
  require("luasnip.loaders.from_vscode").lazy_load()

  vim.api.nvim_create_autocmd("InsertLeave", {
    callback = function()
      if
        require("luasnip").session.current_nodes[vim.api.nvim_get_current_buf()]
        and not require("luasnip").session.jump_active
      then
        require("luasnip").unlink_current()
      end
    end,
  })
end

M.gitsigns = function()
  dofile(vim.g.base46_cache .. "git")

  local options = {
    signs = {
      add = { hl = "DiffAdd", text = "│", numhl = "GitSignsAddNr" },
      change = { hl = "DiffChange", text = "│", numhl = "GitSignsChangeNr" },
      delete = { hl = "DiffDelete", text = "", numhl = "GitSignsDeleteNr" },
      topdelete = { hl = "DiffDelete", text = "‾", numhl = "GitSignsDeleteNr" },
      changedelete = { hl = "DiffChangeDelete", text = "~", numhl = "GitSignsChangeNr" },
      untracked = { hl = "GitSignsAdd", text = "│", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
    },
    on_attach = function(bufnr)
      utils.load_mappings("gitsigns", { buffer = bufnr })
    end,
  }

  options = load_override(options, "lewis6991/gitsigns.nvim")
  require("gitsigns").setup(options)
end

M.devicons = function()
  dofile(vim.g.base46_cache .. "devicons")

  local options = { override = require("nvchad_ui.icons").devicons }
  options = require("core.utils").load_override(options, "nvim-tree/nvim-web-devicons")

  require("nvim-web-devicons").setup(options)
end

return M
