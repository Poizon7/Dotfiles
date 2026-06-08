vim.pack.add({
    -- colorscheme
    { src = "https://github.com/catppuccin/nvim" },
    -- dont know
    { src = "https://github.com/SmiteshP/nvim-navic" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/utilyre/barbecue.nvim" },
    { src = "https://github.com/RRethy/vim-illuminate" },
    -- colorizer
    { src = "https://github.com/catgoose/nvim-colorizer.lua" },
    -- noice
    { src = "https://github.com/MunifTanjim/nui.nvim" },
    { src = "https://github.com/rcarriga/nvim-notify" },
    { src = "https://github.com/folke/noice.nvim" },
    -- raindow
    { src = 'https://github.com/hiphish/rainbow-delimiters.nvim' },
})

require('catppuccin').setup({
    flavor = "macchiato",
})

vim.cmd("colorscheme catppuccin")

require('barbecue').setup({
    theme = "catppuccin"
})

require('illuminate').configure({
    providers = {
        'lsp',
        'treesitter',
        'regex'
    }
})

require('colorizer').setup({
    filetypes = {
        "css",
        "scss",
        "html",
        "vue",
        "javascript",
        "hex",
    },
    user_default_options = {
        css = true,
        -- mode = "virtualtext",
        sass = { enable = true, parsers = { "css" }, },
    },
})

require('noice').setup({
    lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
    },
    -- you can enable a preset for easier configuration
    presets = {
        bottom_search = true,         -- use a classic bottom cmdline for search
        command_palette = true,       -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false,           -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false,       -- add a border to hover docs and signature help
    },
})

local rainbow_delimiters = require 'rainbow-delimiters'

vim.g.rainbow_delimiters = {
    strategy = {
        [''] = rainbow_delimiters.strategy['global'],
        vim = rainbow_delimiters.strategy['local'],
    },
    query = {
        [''] = 'rainbow-delimiters',
        lua = 'rainbow-blocks',
    },
    highlight = {
        'RainbowDelimiterRed',
        'RainbowDelimiterYellow',
        'RainbowDelimiterBlue',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
    },
}
