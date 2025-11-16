return {
    'nvim-telescope/telescope.nvim',
    branch = 'master',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        local telescope = require('telescope')

        telescope.setup {
            defaults = {
                file_ignore_patterns = { "node_modules", ".git/" },
            },
            pickers = {
                find_files = {
                    hidden = true,
                    theme = "dropdown",
                },
                live_grep = {
                    hidden = true,
                    theme = "dropdown",
                },
            },
        }
        vim.keymap.set('n', '<leader>ff', builtin.find_files)
        vim.keymap.set('n', '<leader>fg', builtin.git_files)
        vim.keymap.set('n', '<leader>fl', builtin.live_grep)
    end
}
