local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

map("i", "jk", "<Esc>", { noremap = true, silent = true, desc = "Exit insert mode" })
map("n", "<leader>pv", vim.cmd.Ex, { noremap = true, silent = true, desc = "enter Ex mode" })
