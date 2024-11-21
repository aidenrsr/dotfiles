return {
    {
        "nvimtools/none-ls.nvim",
        dependencies = {
            "nvimtools/none-ls-extras.nvim",
        },
        config = function()
            local null_ls = require("null-ls")

            null_ls.setup({
                sources = {
                    -- Formatting
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.formatting.prettier,
                    null_ls.builtins.formatting.black,
                    null_ls.builtins.formatting.isort,
                    null_ls.builtins.formatting.shfmt,
                    null_ls.builtins.formatting.gofmt,
                    null_ls.builtins.formatting.sqlfluff,

                    -- Diagnostics
                    require("none-ls.diagnostics.eslint_d").with({
                        extra_args = { "--rule", "max-len: 0" }, -- Ignore max length in eslint
                    }),
                    require("none-ls.diagnostics.flake8").with({
                      extra_args = {
                        "--ignore",
                        "E501",
                        "--ignore",
                        "E302",
                        "--ignore",
                        "E303",
                        "--ignore",
                        "E251",
                        "--ignore",
                        "F821",
                      }, -- Ignore line too long in flake8
                    }),
                    null_ls.builtins.diagnostics.golangci_lint, -- For Go
                    null_ls.builtins.diagnostics.sqlfluff.with({
                        extra_args = { "--dialect", "mysql" }, -- Adjust dialect as needed
                    }),
                },
            })
        end,
    },
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "nvimtools/none-ls.nvim",
        },
        config = function()
            require("mason-null-ls").setup({
                ensure_installed = {
                    -- Formatters
                    "stylua",
                    "prettier",
                    "black",
                    "shfmt",
                    "gofmt",
                    "sqlfluff",
                    "isort",

                    -- Diagnostics
                    "eslint_d",
                    "flake8",
                    "shellcheck",
                    "golangci-lint",
                },
            })
        end,
    },
}
