vim.pack.add({
	{ src = "https://github.com/folke/flash.nvim" }
})

vim.keymap.set({ 'n', 'x', 'o' }, '<leader>s', function() require("flash").jump() end)
vim.keymap.set({ 'n', 'x', 'o' }, '<leader>S', function() require("flash").treesitter() end)

-- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
-- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
-- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },

require("flash").toggle()
