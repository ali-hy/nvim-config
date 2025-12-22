-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>e", vim.cmd.Explore, { desc = "Explore" })
vim.keymap.set("i", "<C-_>", "<Cmd>normal gcc<cr>")

-- Pickers
vim.keymap.del("n", "<leader><leader>")

vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "Copy to OS clipboard" })
vim.keymap.set({ "n", "v" }, "<leader>d", '"_y')
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
