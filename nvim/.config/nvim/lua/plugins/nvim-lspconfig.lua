return {
	'neovim/nvim-lspconfig',
	config = function()
		vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
		vim.keymap.set('n', 'K', vim.lsp.buf.hover)
		vim.diagnostic.config({ virtual_text = true })
		vim.lsp.enable({
			"ts_ls",
			"clangd",
			"lua_ls",
			"pyright",
			"rust_analyzer",
			"tinymist",
		})
	end
}
