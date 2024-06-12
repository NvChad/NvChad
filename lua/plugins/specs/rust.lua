return {
  {
    "mrcjkb/rustaceanvim",
    version = "^4", -- Recommended
    lazy = false, -- This plugin is already lazy
    config = function(_, opts)
      vim.g.rustaceanvim = {
        server = {
          default_settings = {
            -- rust-analyzer language server configuration
            ["rust-analyzer"] = {
              check = {
                command = "clippy",
                extraArgs = {
                  "--no-deps",
                },
              },
              assist = {
                importEnforceGranularity = true,
                importPrefix = "crate",
              },
              completion = {
                postfix = {
                  enable = false,
                },
              },
              inlayHints = {
                lifetimeElisionHints = {
                  enable = true,
                  useParameterNames = true,
                },
              },
            },
          },
        },
      }
    end,
  },
}
