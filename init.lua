
- Основные настройки
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.mouse = "a"
vim.g.mapleader = " "

-- Установка lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Плагины
require("lazy").setup({
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.config"):setup({
        ensure_installed = {
          "lua",
          "python",
          "bash",
          "json",
          "html",
          "css",
          "javascript",
          "c",
          "c++",
          "rust",
        },
        highlight = { enable = true, disable = { "lua" } },
      })
    end,
  },

  { "kyazdani42/nvim-web-devicons" },
  { "nvim-lualine/lualine.nvim" },
  { "nvim-tree/nvim-tree.lua" },
  { "nvim-telescope/telescope.nvim" },
  { "neovim/nvim-lspconfig" },
  { "goolord/alpha-nvim" },

  {
    "windwp/nvim-autopairs",
    config = function()
      require("nvim-autopairs").setup({
        disable_filetype = { "TelescopePrompt", "vim" },
      })

      local npairs = require("nvim-autopairs")
      local Rule = require("nvim-autopairs.rule")
      npairs.add_rules({
        Rule("<", ">"):with_pair(function(opts)
          return opts.char
        end),
      })
    end,
  },
})

require("config.keymaps")

-- Настройка иконок
require("nvim-web-devicons").setup({
  override = {},
  default = true,
})

-- Настройка nvim-tree
require("nvim-tree").setup({
  view = {
    width = 30,
    side = "left",
  },
  filters = {
    dotfiles = false,
  },
  update_cwd = true,
})
