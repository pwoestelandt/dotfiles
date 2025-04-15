return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	config = function()
		require("telescope").setup({
			defaults = {
				file_ignore_patterns = { ".git/" },
				find_command = { "fd", "--type", "f", "--hidden", "--exclude", ".git" },
			},
		})

		pcall(require("telescope").load_extension, "fzf")

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>sf", function()
			builtin.find_files({ hidden = true })
		end, { desc = "[S]earch [F]iles" })
		vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
		vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
		vim.keymap.set("n", "<leader><leader>", function()
			builtin.buffers({ sort_mru = true, ignore_current_buffer = true })
		end, { desc = "[ ] Find existing buffers" })
	end,
}
