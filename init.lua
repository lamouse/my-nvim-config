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
require "user.fzf"
require "user.vgit"
require "user.toggleterm"
require "user.neovide"
require "user.windows"
require "user.trouble"
require "user.meson"

require "myself.options"
require "myself.buildsystem"
require "myself.filetype"
-- ui
require "user.ui"

vim.cmd [[colorscheme gruvbox]]
