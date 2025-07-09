-- Основные настройки
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
  default = true,
}

-- Настройка nvim-tree
require 'nvim-tree'.setup{
  view = {
    width = 30,
    side = 'left',
    
    
  },
  filters = {
    dotfiles = false,
  },
  update_cwd = true,
}

