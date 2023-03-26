vim.g.mapleader  = "'"
vim.g.maplocalleader = ""

require "user.keymaps"
require "user.plugins"
require "user.lspconfig"
require "user.cmp"
require "user.telescope"
require 'nvim-treesitter.install'.compilers = { 'clang' }
-- require "user.treesitter"
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
require "myself.format"

vim.cmd [[colorscheme gruvbox]]