vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.o.winborder = "rounded"

vim.o.termguicolors = true
vim.o.signcolumn = "yes"

vim.o.incsearch = true
vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'
vim.o.guifont = "JetBrainsMono Nerd Font"

vim.diagnostic.config({
	virtual_text = false,
	virtual_lines = true,
	update_in_insert = true,
	underline = false,
	severity_sort = true,
	float = true,
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "󰍉",
			[vim.diagnostic.severity.INFO] = "",
		},

	},
})
