return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {"nvim-tree/nvim-web-devicons"},  -- Исправлено

  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
        side = "left",
        preserve_window_proportions = true,
      },
      renderer = {
        icons = {
          glyphs = {
                default = '',
                symlink = '',
                git = {
                    unstaged = '✗',
                    staged = '✓',
                    untracked = '★',
                },
            },
            show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          }, 
        },
      },
      filters = {
        dotfiles = false,
      },
    })
    require("nvim-tree.api").tree.open()
  end,  -- Убедитесь, что здесь нет лишней запятой
}
