-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("i", "jj", "<Esc>:w<CR>", opts)
keymap("i", "jk", "<Esc>:w<CR>", opts)

-- greatest remap ever
keymap("x", "<leader>p", [["_dP]])
-- next greatest remap ever : asbjornHaland
keymap({ "n", "v" }, "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+Y]])
keymap({ "n", "v" }, "<leader>d", [["_d]])
