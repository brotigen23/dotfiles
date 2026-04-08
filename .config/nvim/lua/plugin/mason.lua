vim.pack.add({ 'https://github.com/mason-org/mason.nvim' })
vim.pack.add({ 'https://github.com/mason-org/mason-lspconfig.nvim' })

require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls",
        'bashls',

        -- INFO: backend
        "gopls",

        -- INFO: frontend
        "astro",
        "css_variables",
        "cssls",
        "cssmodules_ls",
        "ts_ls"
    }
}
