local present, ts_config = pcall(require, "nvim-treesitter.configs")
if not present then
    return
end

ts_config.setup {
    ensure_installed = {
        "bash",
        "c",
        "cmake",
        "comment",
        "commonlisp",
        "cpp",
        "css",
        "dockerfile",
        "go",
        "gomod",
        "html",
        "javascript",
        "json",
        "lua",
        "python",
        "regex",
        "rust",
        "toml",
        "yaml",
    },
    highlight = {
        enable = true,
        use_languagetree = true
    },
    indent = {
        enable = true,
    },
}