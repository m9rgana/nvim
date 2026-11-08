vim.opt.number = true -- shows line numbers
vim.opt.relativenumber = true -- sets line numbers as relative of the line the cursor is at
vim.opt.tabstop = 4 -- sets how many spaces should the tab be
vim.opt.shiftwidth = 4 -- sets how many spaces should an indentation shoul be
vim.opt.expandtab = true -- converts tab to spaces
vim.opt.smartindent = true -- automatically indents new lines
vim.opt.wrap = false -- wrapping is when a line exceeds the width of the window and continues in the next line (even tho it doesn't make a new line)
vim.opt.cursorline = true -- lights the line where the cursor is
vim.opt.termguicolors = true -- Enable 24-bit RGB colors

vim.cmd('syntax enable') -- via Vim scripts enables syntax highlighting
vim.cmd('filetype plugin indent on') -- does three things: enables file type recognition via extension, loads file type specific plugins and enables filetype specific indentation rules
