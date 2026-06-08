vim.pack.add({
	{ src = "http://github.com/nvim-lua/plenary.nvim" },
	{ src = "http://github.com/nvim-telescope/telescope.nvim" }
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', builtin.live_grep, { desc = 'Telescope live grep' })
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

local actions = require('telescope.actions')

require('telescope').setup({
	defaults = {
		mappings = {
			i = {
				["<Tab>"] = "move_selection_next",
				["<S-Tab>"] = "move_selection_previous",
			}
		}
	}
})

-- Smaller picker

-- vim.pack.add({
-- 	{ src = "https://github.com/echasnovski/mini.pick" },
-- })
--
-- vim.keymap.set('n', '<leader>f', ":Pick files<CR>")
-- vim.keymap.set('n', '<leader>h', ":Pick help<CR>")
--
-- require "mini.pick".setup()
