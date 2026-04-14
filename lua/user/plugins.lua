-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- 插件列表
require("lazy").setup({
  -- 主题
  { "morhetz/gruvbox" },

  -- LSP
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "p00f/clangd_extensions.nvim" },

  -- 补全
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/nvim-cmp" },
  { "saadparwaiz1/cmp_luasnip" },
  { "hrsh7th/cmp-nvim-lsp-signature-help" },
  { "hrsh7th/cmp-nvim-lsp-document-symbol" },

  -- Git
  {
    "tanvirtin/vgit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  { "lewis6991/gitsigns.nvim" },
  { "sindrets/diffview.nvim" },

  -- 搜索
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  -- 片段
  { "L3MON4D3/LuaSnip" },
  { "rafamadriz/friendly-snippets" },

  -- 语法高亮
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  { "windwp/nvim-autopairs" },

  -- 文件树
  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    lazy = false,
  },

  -- 终端
  { "akinsho/toggleterm.nvim", version = "*" },

  -- 大纲（替换旧 symbols-outline）
  { 
	"hedyhli/outline.nvim",
	lazy = true,
  },

  -- 标签栏 / 状态栏
  {
    "akinsho/bufferline.nvim",
    version = "v4.*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- 快捷键提示
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeoutlen = 300
    end,
  },

  -- 窗口调整
  {
    "anuvyklack/windows.nvim",
    dependencies = {
      "anuvyklack/middleclass",
      "anuvyklack/animation.nvim",
    },
  },

  -- 错误面板
  { "folke/trouble.nvim" },
}, {
  ui = {
    border = "single",
  },
})