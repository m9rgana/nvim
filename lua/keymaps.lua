-- KEY BINDS
-- vim.g allows to edit global vim variables 
vim.g.mapleader = " "
vim.keymap.set('n', "<leader>w", "<cmd>w<CR>") -- 'n' means it works in normal mode, the second is the keybind and the last is the command.
-- <cmd>w<CR> is better than :w<CR> because it doesn't enter the command line mode. <CR> refers to the enter key
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

-- tabs keymaps (just the simplest) - to be added if necessary
-- Navigate between buffers
vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<CR>', { desc = 'Previous buffer' })

-- Close current buffer
vim.keymap.set('n', '<leader>bd', '<Cmd>BufferClose<CR>', { desc = 'Close buffer' })
