local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Настройки клавиш
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
map("n", "<Tab>", ":BufferLineCycleNext<CR>", opts)
map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<leader>q", ":bd<CR>", { desc = "Close buffer" })
map("n", "<leader>t", ":terminal<CR>", { desc = "Open terminal" })

-- Настройка сочетания клавиш для Telescope
map("n", "<leader>f", function() require('telescope.builtin').find_files() end, { desc = "Find Files" })

-- Открытие терминала
vim.keymap.set("n", "<C-t>", function() vim.cmd("belowright split | terminal") end, { desc = "Open terminal below" })

-- Создание пользовательской команды
vim.api.nvim_create_user_command("Term", function() vim.cmd("belowright split | terminal") end, {})
