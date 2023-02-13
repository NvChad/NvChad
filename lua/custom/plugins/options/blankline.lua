return function()
  return {
    indentLine_enabled = 1,
    char = "▏",
    -- char = "|",
    filetype_exclude = {
      "help", "terminal", "alpha", "packer", "lspinfo", "TelescopePrompt", "TelescopeResults", "lsp-installer", ""
    },
    buftype_exclude = {"terminal"},
    show_trailing_blankline_indent = false,
    show_first_indent_level = false,
    show_current_context = true,
    show_current_context_start = true,
    use_treesitter = true
  }
end
