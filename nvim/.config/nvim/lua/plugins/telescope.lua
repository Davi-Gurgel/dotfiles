return {
    'nvim-telescope/telescope.nvim', branch = 'master',
    dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope git files' })
	end
}
