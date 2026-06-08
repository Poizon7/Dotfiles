local opts = {
    noremap = true, -- non-recursive
    silent = true,  -- do not show message
}

vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)


vim.keymap.set('n', '<Leader>a', vim.lsp.buf.code_action, opts)

vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
