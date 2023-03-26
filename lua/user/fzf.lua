local opts = { noremap = true, silent = true }
vim.keymap.set('n', '<leader>fl', '<cmd>Lines<CR>', opts)
vim.keymap.set('n', '<leader>fb', '<cmd>Buffers<CR>', opts)
vim.keymap.set('n', '<leader>fm', '<cmd>Marks<CR>', opts)
vim.keymap.set('n', '<leader>ff', '<cmd>Files .<CR>', opts)
