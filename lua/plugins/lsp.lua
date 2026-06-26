return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig",
    },
    config = function()
      require("mason").setup({
<<<<<<< HEAD
        ensure_installed = { "clangd" },
      })

      vim.lsp.config.setup("clangd", {
        on_attach = function(client, bufnr)
=======
        ensure_installed = {"clangd"}
      })
      local lspconfig = require("lspconfig")
      
      lspconfig.clangd.setup({
        on_attach = function(client, bufnr)
          -- Настройка клавиатурного сокращения для форматирования
>>>>>>> 7611fa39c497a811b4a589438100dadd196ee20f
          vim.keymap.set("n", "<leader>f", function()
            vim.lsp.buf.format({ async = true })
          end, { buffer = bufnr, desc = "Format C++" })

<<<<<<< HEAD
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
=======
          -- Автокоманда для форматирования перед сохранением
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            
>>>>>>> 7611fa39c497a811b4a589438100dadd196ee20f
            callback = function()
              vim.lsp.buf.format({ async = false })
            end,
          })
        end,
      })
    end,
  },
}
<<<<<<< HEAD

=======
>>>>>>> 7611fa39c497a811b4a589438100dadd196ee20f
