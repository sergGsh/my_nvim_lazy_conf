return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig",
    },
    config = function()
      require("mason").setup({
        ensure_installed = { "clangd" },
      })

      vim.lsp.config.setup("clangd", {
        on_attach = function(client, bufnr)
          vim.keymap.set("n", "<leader>f", function()
            vim.lsp.buf.format({ async = true })
          end, { buffer = bufnr, desc = "Format C++" })

          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ async = false })
            end,
          })
        end,
      })
    end,
  },
}

