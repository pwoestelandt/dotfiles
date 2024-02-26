local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

map("i", "jk", "<Esc>", { desc = "Exit insert mode" })
map("n", "<leader>pv", vim.cmd.Ex, { desc = "enter Ex mode" })
map("n", "<leader>w", vim.cmd.write, { desc = "save file" })
