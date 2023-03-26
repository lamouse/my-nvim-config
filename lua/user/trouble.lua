local status_ok, trouble = pcall(require, "trouble")

if not status_ok then
    vim.notify("trouble don't exists")
    return
end

trouble.setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}
