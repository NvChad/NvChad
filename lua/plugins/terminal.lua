local present, terminal = pcall(require, "toggleterm")
if not present then
    return
end

terminal.setup(
  {
    size = 20,
    open_mapping = [[<c-t>]],
    hide_numbers = true,
    -- TODO, shade means darker color
    shade_filetypes = {},
    shade_terminals = true,
    -- 1 for backgrounds, 3 for light
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = false,
    -- 'vertical' | 'horizontal' | 'window' | 'float'
    direction = "horizontal",
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
      border = "curved",
      winblend = 0,
      highlights = {
        border = "Normal",
        background = "Normal",
      },
    },
  }
)
