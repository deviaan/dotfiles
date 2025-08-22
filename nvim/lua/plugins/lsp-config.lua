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
			ensure_installed = {},
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

		end,
	},
}
