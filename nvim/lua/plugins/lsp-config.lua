-- Language server setup 
return {
    {
        'mason-org/mason.nvim',
        opts = {},
    },

    {
        'mason-org/mason-lspconfig.nvim',
        opts = {
            -- If an LSP is needed everywhere, add it here  
            ensure_installed = {
                'lua_language_server',
            },
        },
    },

    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')

            lspconfig.lua_language_server.setup({})
        end,
    },
}
