return {
	"aznhe21/actions-preview.nvim",
	config = function()
		vim.keymap.set({ 'v', 'n' }, '<leader>ca', require('actions-preview').code_actions)
		require("actions-preview").setup {
			backend = { "telescope" },
			extensions = { "env" },
			telescope = vim.tbl_extend(
				"force",
				require("telescope.themes").get_dropdown(), {}
			)
		}
	end
}
