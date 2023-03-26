local keymap = vim.api.nvim_set_keymap

local opts = {noremap = true, silent = true}
vim.keymap.set('n', "<leader>t", ":NeoTreeRevealToggle<CR>", opts)
vim.keymap.set('n', "<leader>s", ":SymbolsOutline<CR>", opts)
