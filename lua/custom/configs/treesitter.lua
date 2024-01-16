local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.fsharp = {
  install_info = {
    url = "C:\\Users\\kochc\\AppData\\Local\\nvim-data\\Tree Sitter\\tree-sitter-fsharp",
    files = {"src/scanner.cc", "src/parser.c" }
  },
  filetype = "fsharp",
}
vim.notify("It has been run", vim.log.levels.INFO)
