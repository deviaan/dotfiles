-- Language server setup
return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			-- If an LSP is needed everywhere, add it here
			ensure_installed = {
                "lua_ls",
                "pyright",
                "rust_analyzer",
                "clangd",
                "perlnavigator",
                "html",
                "cssls",
            },
		},
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
            -- Set up language servers
			local lspconfig = require("lspconfig")
            -- Connect to autocomplete
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

			lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
			lspconfig.pyright.setup({
                capabilities = capabilities
            })
			lspconfig.rust_analyzer.setup({
                capabilities = capabilities
            })
			lspconfig.clangd.setup({
                capabilities = capabilities
            })
			lspconfig.perlnavigator.setup({
                capabilities = capabilities
            })
            lspconfig.html.setup({
                capabilities = capabilities
            })
            lspconfig.cssls.setup({
                capabilities = capabilities
            })


		end,
	},
}
