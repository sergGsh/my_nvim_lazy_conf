-- Основные настройки
vim.opt.number = true
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
<<<<<<< HEAD
vim.opt.tabstop = 2
=======
vim.opt.tabstop = 2   
>>>>>>> 7611fa39c497a811b4a589438100dadd196ee20f
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.mouse = "a"
vim.g.mapleader = " "

-- Установка lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
<<<<<<< HEAD
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
=======
    vim.fn.system({
        "git",
        "clone",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Функция для настройки плагинов
local function setup_plugins()
    require("lazy").setup({
        {
        
          "nvim-treesitter/nvim-treesitter",
            "kyazdani42/nvim-web-devicons",
            "nvim-treesitter/nvim-treesitter",
            "nvim-lualine/lualine.nvim",
            "nvim-tree/nvim-tree.lua",
             "nvim-telescope/telescope.nvim",
            "neovim/nvim-lspconfig",
            "goolord/alpha-nvim",
            "windwp/nvim-autopairs",
            build = ":TSUpdate",
            config = function()
                require("nvim-treesitter.configs").setup({
                    ensure_installed = { "lua", "python", "bash", "json", "html", "css", "javascript", "c", "c++", "rust" },
                    highlight = { enable = true },
                })
                require("nvim-autopairs").setup({ check_ts = true })
            end,
        },
        --{ "folke/tokionight.nvim",
        --config = function()
        --vim.cmd("colorscheme tokyonight")
        --end
        --}, 
    })
end

-- Создаем автокоманду для события InsertEnter
vim.api.nvim_create_autocmd("InsertEnter", {
    callback = setup_plugins,
})

-- Настройка плагинов
require("lazy").setup("plugins")
require("config.keymaps")

-- Настройка иконок
require('nvim-web-devicons').setup{
  override = {},
  default = true,
}

-- Настройка nvim-tree
require 'nvim-tree'.setup{
  view = {
    width = 30,
    side = 'left',
    
    
>>>>>>> 7611fa39c497a811b4a589438100dadd196ee20f
  },
  filters = {
    dotfiles = false,
  },
  update_cwd = true,
<<<<<<< HEAD
})
=======
}
>>>>>>> 7611fa39c497a811b4a589438100dadd196ee20f

