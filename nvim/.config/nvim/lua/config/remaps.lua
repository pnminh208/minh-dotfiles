
-- General Mappings
vim.keymap.set('n', '<Esc>','<cmd>nohlsearch<CR>', { desc = 'Clear search highlight' })

-- Neo-Tree
vim.keymap.set('n', '<leader>e','<cmd>Neotree toggle<CR>', { desc = 'Toggle file tree' })
vim.keymap.set('n', '<leader>o','<cmd>Neotree reveal<CR>', { desc = 'Reveal current file in tree' })
vim.keymap.set('n', '<leader>f','<cmd>Neotree focus<CR>', { desc = 'Focus file tree' })
vim.keymap.set('n', '<leader>g','<cmd>Neotree float git_status<CR>', { desc = 'Git changes' })

-- Window navigation
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Go to window below'})
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Go to left window'})
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Go to window above'})
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Go to right window'})

vim.keymap.set('n', '<S-l>', '<cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer'})
vim.keymap.set('n', '<S-h>', '<cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer'})
vim.keymap.set('n', '<leader>x', '<cmd>bdelete<CR>', { desc = 'Close buffer'})
