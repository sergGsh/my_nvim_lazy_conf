local map = vim.keymap.set
local opts = { noremap = true, silent = true}
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<leader>q", ":bd<CR>", {desc = "Close buffer"})
map("n", "<leader>t", ":terminal<CR>", { desc = "Open terminal" })
