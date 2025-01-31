-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

map("i", "jk", "<Esc>", { noremap = true, silent = true, desc = "Exit insert mode" })
map("n", "<leader>pv", vim.cmd.Ex, { noremap = true, silent = true, desc = "enter Ex mode" })
