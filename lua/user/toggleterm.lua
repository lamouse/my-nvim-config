local status_ok, toggleterm = pcall(require, 'toggleterm')

if not status_ok then
    vim.notify("toggleterm plugin is not exists")
    return
end

toggleterm.setup();

vim.keymap.set('n', '<c-t>', '<Cmd>exe v:count1 . "ToggleTerm"<CR>', {noremap = true, silent = true}, opts)
vim.keymap.set('i', '<c-t>', '<Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>', {noremap = true, silent = true}, opts)
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
-- vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)

-- vim.api.nvim_command('autocmd! TermEnter term://*toggleterm#* tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>')
