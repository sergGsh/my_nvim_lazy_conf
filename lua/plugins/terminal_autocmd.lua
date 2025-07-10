return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
    require("toggleterm").setup({
        direction = "horizontal",  -- Исправлено: directional на direction
        size = 15,
        start_in_insert = true,
    })


    vim.api.nvim_create_autocmd("BufReadPost", {
        pattern = "*.cpp",
        callback = function()
        local Terminal = require("toggleterm.terminal").Terminal
        local term =Terminal:new({
            dir = vim.fn.expand("%:p:h"),
               directional = "horizontal",})
        term:toggle()

   end,
    })
    end,
}
