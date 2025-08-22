-- Plugins that provide auto complete
return {
    -- LSP completions
    { 'hrsh7th/cmp-nvim-lsp' },
    -- Snippets
    {
        "L3MON4D3/LuaSnip",
        version = "v2.*",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
    },
    -- Autocomplete
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")
            require("luasnip.loaders.from_vscode").lazy_load()
            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },

                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },

                mappings = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space"] = cmp.mapping.complete(),
                    ["<C-e"] = cmp.mapping.abort(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),

                sources = cmp.config.sources({
                    {
                        { name = "luasnip" },
                    },
                    {
                        { name = "buffere" },
                    },
                }),
            })
        end,
    },
}
