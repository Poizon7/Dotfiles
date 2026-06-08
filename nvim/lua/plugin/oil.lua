vim.pack.add({
	{ src = "https://github.com/stevearc/oil.nvim" }
})

vim.keymap.set('n', '<leader>e', ":Oil<CR>")

require "oil".setup()
