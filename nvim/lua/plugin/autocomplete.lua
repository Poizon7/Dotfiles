vim.pack.add({
	{ src = "https://github.com/L3MON4D3/LuaSnip" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/saghen/blink.cmp" },
})

require('blink.cmp').setup({
	-- See :h blink-cmp-config-keymap for defining your own keymap
	keymap = {
		preset = 'enter',
		['<S-Tab>'] = { 'select_prev', 'fallback' },
		['<Tab>'] = { 'select_next', 'fallback' },
	},
	appearance = {
		nerd_font_variant = 'mono'
	},
	-- (Default) Only show the documentation popup when manually triggered
	completion = {
		documentation = {
			auto_show = false
		},
		ghost_text = {
			enabled = true
		}
	},
	snippets = { preset = 'luasnip' },
	-- Default list of enabled providers defined so that you can extend it
	-- elsewhere in your config, without redefining it, due to `opts_extend`
	sources = {
		default = { 'lsp', 'path', 'snippets', 'buffer' },
	},
	fuzzy = { implementation = "prefer_rust_with_warning" },
})

-- Built in
-- vim.api.nvim_create_autocmd('LspAttach', {
-- 	callback = function(ev)
-- 		local client = vim.lsp.get_client_by_id(ev.data.client_id)
-- 		if client:supports_method('textDocument/completion') then
-- 			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
-- 		end
-- 	end,
-- })
-- vim.cmd("set completeopt+=noselect")
