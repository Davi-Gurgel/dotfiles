return {
	'stevearc/oil.nvim',
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,

	config = function()
		require("oil").setup({
			keymaps = {
				["<C-h>"] = false,
				["<C-l>"] = false,
				["<C-k>"] = false,
				["<C-j>"] = false,
				["<M-h>"] = "actions.select_vsplit",
				["q"] = "actions.close",
			},
			view_options = {
				show_hidden = true,
			},
			skip_confirm_for_simple_edits = true,
		})
		vim.keymap.set('n', '<leader>e', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
	end
}
