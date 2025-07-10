return{
    "nvim-telescope/telescope.nvim",
    tag ="0.1.5",
    depedencies = {"nvim-lua/plenary.nvim"},
    cmd ="Telescope",
    keys = {
    {"<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files"},
    {"<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep text"},
    {"<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers"},
    {"<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Helps"},
    opts = {
        defaults = {
            layout_config = {
                horizontal = {preview_width = 0.6},
            },
        },
    },
    },
}
