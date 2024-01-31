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

-- Move Lines
keymap("n", "<Esc-k>", "<cmd>m .+1<cr>==", { desc = "Move up" })
keymap("n", "<Esc-j>", "<cmd>m .-2<cr>==", { desc = "Move down" })
keymap("i", "<Esc-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
keymap("i", "<Esc-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
keymap("v", "<Esc-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
keymap("v", "<Esc-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
