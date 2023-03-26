vim.opt.backup = false
vim.opt.hlsearch = true
vim.opt.smartcase = true

vim.opt.showtabline = 2
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

vim.opt.fileencoding = "utf-8"
vim.opt.autoread = true

vim.opt.number = true
vim.opt.relativenumber = true 
vim.opt.numberwidth = 4

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.updatetime = 100

vim.opt.termguicolors = true
vim.opt.wrap = false

vim.opt.cursorline =  true

vim.opt.mouse = "a"
vim.opt.hidden = true

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"

vim.api.nvim_command(':filetype plugin on')

local vim = vim
local api = vim.api
local M = {}
-- function to create a list of commands and convert them to autocommands
-------- This function is taken from https://github.com/norcalli/nvim_utils
function M.nvim_create_augroups(definitions)
    for group_name, definition in pairs(definitions) do
        api.nvim_command('augroup '..group_name)
        api.nvim_command('autocmd!')
        for _, def in ipairs(definition) do
            local command = table.concat(vim.tbl_flatten{'autocmd', def}, ' ')
            api.nvim_command(command)
        end
        api.nvim_command('augroup END')
    end
end


local autoCommands = {
    -- other autocommands
    open_folds = {
        {"BufReadPost,FileReadPost", "*", "normal zR"}
    }
}

M.nvim_create_augroups(autoCommands)