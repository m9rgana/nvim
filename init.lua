--[[
    M9RG's Neovim configuration
    Modular configuration with comments explaining each section.
]]

require('options') -- Nvim searches by default inside the "lua" directory
require('keymaps')
require('pluginManager')

-- plugins
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.completion')
require('plugins.explorer')
require('plugins.theme')
require('plugins.lualine')
