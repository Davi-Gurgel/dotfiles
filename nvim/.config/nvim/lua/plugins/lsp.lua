return {
    'neovim/nvim-lspconfig',
    config = function()
        vim.keymap.set('n', '<leader>lf', vim.lsp.buf.format)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action)
        vim.keymap.set('n', '<leader>sd', vim.diagnostic.open_float)
        vim.keymap.set('n', '<leader>sr', vim.lsp.buf.rename)
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
