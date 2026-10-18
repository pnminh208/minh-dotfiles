local vim = vim
local Plug = vim.fn['plug#'] 

vim.g.mapleader = ' '

vim.call('plug#begin')
-- Tree
Plug('https://github.com/nvim-lua/plenary.nvim')
Plug('https://github.com/MunifTanjim/nui.nvim')
Plug('https://github.com/nvim-neo-tree/neo-tree.nvim')
Plug('https://github.com/nvim-tree/nvim-web-devicons')
-- Autopairs
Plug('https://github.com/windwp/nvim-autopairs') 

-- buffer view
Plug('https://github.com/akinsho/bufferline.nvim')

-- Colorschemes
Plug('https://github.com/thesimonho/kanagawa-paper.nvim')

-- Scroll
Plug('karb94/neoscroll.nvim')

-- Treesitter
Plug('nvim-treesitter/nvim-treesitter')

-- LSP
Plug('mason-org/mason.nvim')
Plug('seblyng/roslyn.nvim')

vim.call('plug#end')

require("nvim-autopairs").setup {}
require("bufferline").setup {}
require("neoscroll").setup {
	hide_cursor = false,
}
require("nvim-treesitter").setup {}
require('nvim-treesitter').install {'c_sharp', 'lua'}

require("config.remaps")
require("config.options")

require('mason').setup()
require('roslyn').setup({})

vim.api.nvim_create_autocmd('FileType', {
	pattern = { 'cs', 'lua'},
	callback = function() vim.treesitter.start() end,
})

-- Colorscheme
vim.cmd.colorscheme("kanagawa-paper-ink")

