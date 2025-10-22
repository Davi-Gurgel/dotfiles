return {
	"github/copilot.vim",
	cmd = "Copilot",
	event = "BufWinEnter",
	config = function()
		vim.keymap.set('n', '<leader>cd', ':Copilot disable<CR>')
		vim.keymap.set('n', '<leader>ce', ':Copilot enable<CR>')
		vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
			expr = true,
			replace_keycodes = false
		})
		vim.g.copilot_no_tab_map = true
	end
}
