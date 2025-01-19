return {
	"nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
                -- General
				null_ls.builtins.completion.spell,
                -- Lua
				null_ls.builtins.formatting.stylua,
                -- JS/TS
                require("none-ls.diagnostics.eslint_d"),
                -- Python
                require("none-ls.formatting.ruff"),
                require("none-ls.diagnostics.ruff"),
                null_ls.builtins.diagnostics.mypy,
			},
		})
	end,
}
