-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Reverse vertical movement.
vim.keymap.set({ "n", "x", "o" }, "j", "k")
vim.keymap.set({ "n", "x", "o" }, "k", "j")

-- Delete without yanking
vim.keymap.set({ "n", "x" }, "d", '"_d')
vim.keymap.set({ "n", "x" }, "D", '"_D')

-- Change without yanking
vim.keymap.set({ "n", "x" }, "c", '"_c')
