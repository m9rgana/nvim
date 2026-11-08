-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\" -- secondary mapleader

-- General keymaps
vim.keymap.set("n", "<leader>w", "<cmd>write<CR>", {
    desc = "Save file",
})

-- Telescope keymaps
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {
    desc = "Find Files",
})

vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {
    desc = "Live Grep",
})

vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {
    desc = "Find Buffers",
})

vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {
    desc = "Find Help",
})

-- Barbar keymaps
vim.keymap.set("n", "<Tab>", "<Cmd>BufferNext<CR>", {
    desc = "Next buffer",
})

vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferPrevious<CR>", {
    desc = "Previous buffer",
})

vim.keymap.set("n", "<leader>bd", "<Cmd>BufferClose<CR>", {
    desc = "Close buffer",
})
