-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

local options = {
  showtabline = 0,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
