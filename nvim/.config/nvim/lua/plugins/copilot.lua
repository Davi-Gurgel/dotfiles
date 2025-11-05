return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = {
				auto_trigger = false,
				keymap = {
					accept = "<C-j>",
				}
			}
		})
		vim.keymap.set('n', '<leader>ct', function()
			require("copilot.suggestion").toggle_auto_trigger()
		end)
	end,
}
