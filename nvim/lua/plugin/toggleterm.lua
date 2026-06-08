vim.pack.add({
    { src = "https://github.com/akinsho/toggleterm.nvim" }
})

vim.keymap.set('n', '<leader>t', vim.cmd.ToggleTerm)

require('toggleterm').setup({
    size = function(term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    direction = 'float',
    -- open_mapping = [[<leader>t]],
    float_opts = {
        border = 'single',
        width = function()
            return math.floor(vim.o.columns * 0.95)
        end,
        height = function()
        end,
    },
})
