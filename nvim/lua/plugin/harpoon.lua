vim.pack.add({
	{ src = "https://github.com/ThePrimeagen/harpoon" },
	{ src = 'https://github.com/nvim-lua/plenary.nvim' }
})

require('harpoon').setup()

local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set("n", "<Leader>ha", mark.add_file)
vim.keymap.set("n", "<Leader>he", ui.toggle_quick_menu)

vim.keymap.set("n", "<Leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<Leader>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<Leader>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<Leader>4", function() ui.nav_file(4) end)
vim.keymap.set("n", "<Leader>5", function() ui.nav_file(5) end)
vim.keymap.set("n", "<Leader>6", function() ui.nav_file(6) end)
vim.keymap.set("n", "<Leader>7", function() ui.nav_file(7) end)
vim.keymap.set("n", "<Leader>8", function() ui.nav_file(8) end)
vim.keymap.set("n", "<Leader>9", function() ui.nav_file(9) end)
vim.keymap.set("n", "<Leader>0", function() ui.nav_file(10) end)
