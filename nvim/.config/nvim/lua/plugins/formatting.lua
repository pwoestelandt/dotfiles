return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		{ "williamboman/mason.nvim", opts = {} },
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},

	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local ensure_installed = { "stylua", "eslint_d", "rubocop" }
		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				-- TypeScript & JavaScript
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_d,
				null_ls.builtins.code_actions.eslint_d,

				-- Ruby
				null_ls.builtins.formatting.rubocop,
				null_ls.builtins.diagnostics.rubocop,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

		local format_augroup = vim.api.nvim_create_augroup("format", { clear = true })
		vim.api.nvim_create_autocmd({ "BufWritePre" }, {
			group = format_augroup,
			callback = function()
				vim.lsp.buf.format({ async = false })
			end,
		})
	end,
}
