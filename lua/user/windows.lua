local status_ok, windows = pcall(require, 'windows')

if not status_ok then
    vim.notify("windows plugin don't exists")
    return
end

windows.setup{
    config = function()
        vim.o.winwidth = 10
        vim.o.winminwidth = 10
        vim.o.equalalways = false
        require('windows').setup()
    end,
}

local function cmd(command)
   return table.concat({ '<Cmd>', command, '<CR>' })
end

vim.keymap.set('n', '<C-w>m', cmd 'WindowsMaximize')
vim.keymap.set('n', '<C-w>_', cmd 'WindowsMaximizeVertically')
vim.keymap.set('n', '<C-w>|', cmd 'WindowsMaximizeHorizontally')
vim.keymap.set('n', '<C-w>=', cmd 'WindowsEqualize')
vim.keymap.set('n', '<C-w>t', cmd 'WindowsToggleAutowidth')
