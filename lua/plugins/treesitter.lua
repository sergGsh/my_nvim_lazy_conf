return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event ={ "BufReadPost", "BufNewFile" },
  opts ={
    ensure_installed ={
      "lua",
      "vim",
      "bash",
      "json",
      "markdown",
      "swift"
    },
    highlight ={ enable = true },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
    end,
}
