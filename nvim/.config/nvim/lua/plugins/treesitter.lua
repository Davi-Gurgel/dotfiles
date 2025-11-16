return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    branch = "main",
    build = ":TSUpdate",
    ---@class TSConfig
    opts = {
        ensure_installed = {
            "astro",
            "bash",
            "c",
            "css",
            "diff",
            "go",
            "gomod",
            "gowork",
            "gosum",
            "graphql",
            "javascript",
            "jsdoc",
            "json",
            "lua",
            "luadoc",
            "luap",
            "markdown",
            "markdown_inline",
            "python",
            "query",
            "regex",
            "toml",
            "tsx",
            "typescript",
            "vim",
            "vimdoc",
            "yaml",
            "ruby",
            "bash",
        },
    },
    config = function(_, opts)
        -- install parsers from custom opts.ensure_installed
        if opts.ensure_installed and #opts.ensure_installed > 0 then
            require("nvim-treesitter").install(opts.ensure_installed)
        end
        vim.api.nvim_create_autocmd('FileType', {
            pattern = { '<filetype>' },
            callback = function() vim.treesitter.start() end,
        })
    end
}
