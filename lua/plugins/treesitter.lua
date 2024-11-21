return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup({
            ensure_installed = {
                "lua",
                "javascript",
                "go",
                "python",
                "html",
                "c",
                "zig",
                "rust",
                "java",
                "css",
                "sql",
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
