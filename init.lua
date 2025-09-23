vim.g.mapleader  = "'"
vim.g.maplocalleader = ""

require "user.keymaps"
require "user.plugins"
require "user.cmp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.gitsigns"
require "user.neo-tree"
require "user.symbolsoutline"
require "user.lualine"
require "user.bufferline"
-- require "user.fzf"
require "user.vgit"
require "user.toggleterm"
require "user.neovide"
require "user.windows"
require "user.trouble"

require "myself.options"
require "myself.buildsystem"
require "myself.filetype"
-- ui
require "user.ui"

vim.cmd [[colorscheme gruvbox]]
vim.lsp.enable('clangd')

if vim.lsp.inlay_hint then
  vim.keymap.set("n", "<leader>L", function()
    local enabled = vim.lsp.inlay_hint.is_enabled({ bufnr = bufnr })
    vim.lsp.inlay_hint.enable(not enabled, { bufnr = bufnr })
    vim.notify("Inlay hints " .. (enabled and "disabled" or "enabled"), vim.log.levels.INFO)
  end, { buffer = bufnr, desc = "Toggle Inlay Hints" })
end
