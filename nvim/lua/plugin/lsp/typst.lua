vim.pack.add({
    { src = "https://github.com/chomosuke/typst-preview.nvim" },
})

vim.lsp.config["tinymist"] = {
    cmd = { "tinymist" },
    filetypes = { "typst" },
    settings = {
        formatterMode = "typstyle",
    }
}

require('typst-preview').setup()

vim.keymap.set('n', '<leader>ll', ":TypstPreview<CR>")
