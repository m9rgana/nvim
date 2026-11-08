return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "main",
        lazy = false,
        build = ":TSUpdate",

        config = function()
            -- Install parsers
            require("nvim-treesitter").install({
                "lua",
                "vim",
                "vimdoc",
                "javascript",
                "typescript",
                "python",
                "rust",
                "go",
                "html",
                "css",
                "json",
                "yaml",
                "toml",
                "markdown",
                "bash",
                "java",
            })

            -- Enable Tree-sitter highlighting
            vim.api.nvim_create_autocmd("FileType", {
                callback = function()
                    pcall(vim.treesitter.start)
                end,
            })
        end,
    },
}

