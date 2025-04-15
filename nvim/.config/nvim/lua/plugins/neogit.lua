return {
	"NeogitOrg/neogit",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"sindrets/diffview.nvim",

		"nvim-telescope/telescope.nvim",
	},
	config = function()
		local neogit = require("neogit")
		neogit.setup({})

		vim.keymap.set("n", "<leader>gs", function()
			neogit.open({ kind = "floating" })
		end, { silent = true, noremap = true })
	end,
}
