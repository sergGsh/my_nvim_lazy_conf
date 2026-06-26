return{
"akinsho/toggleterm.nvim",
version = "*",
depedencies ={
    "neovim/nvim-lspconfig",
},

opts ={
    direction = "horizontal",
    size = 15,
   start_in_insert = true,
},




keys = {
{"<leader>ft",function() local util = require("lspconfig.util") local root = util.root_pattern(".git","package.json","pyproject.toml", "*.cpp","*.c","*.h","*.hpp","*.json")(vim.fn.expand("%:p"))
    if root then
        vim.cmd("lcd" .. root)
        end vim.cmd("ToggleTerm") end , desc ="Открыть терминал в корне проекта",

},
},
}
