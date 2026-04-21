local keymap = vim.api.nvim_set_keymap

local opts = {noremap = true, silent = true}
vim.keymap.set('n', "<leader>s", ":Outline<CR>", opts)
vim.keymap.set('n', "<leader>t", ":Neotree<CR>", opts)
vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, { buffer = bufnr, desc = 'LSP Code Action' })