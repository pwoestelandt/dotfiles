return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		{ "williamboman/mason.nvim", opts = {} },
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},

	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local ensure_installed = { "stylua" }
		require("mason-tool-installer").setup({ ensure_installed = ensure_installed })

		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

		local format_augroup = vim.api.nvim_create_augroup("format", { clear = true })
		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
			group = format_augroup,
			callback = function()
				vim.lsp.buf.format()
			end,
		})
	end,
}
