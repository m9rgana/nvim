return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",

        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
        },

        keys = {
            {
                "<leader>ff",
                "<cmd>Telescope find_files<CR>",
                desc = "Find Files",
            },
            {
                "<leader>fg",
                "<cmd>Telescope live_grep<CR>",
                desc = "Live Grep",
            },
            {
                "<leader>fb",
                "<cmd>Telescope buffers<CR>",
                desc = "Find Buffers",
            },
            {
                "<leader>fh",
                "<cmd>Telescope help_tags<CR>",
                desc = "Find Help",
            },
        },
    },
}

