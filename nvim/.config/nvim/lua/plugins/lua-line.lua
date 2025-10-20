return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		require('lualine').setup({
			options = {
				theme = 'codedark',
				section_separators = '',
				component_separators = '',
				disable_filetype = { 'neo-tree' },
				globalstatus = true,
			}
		})
	end
}
