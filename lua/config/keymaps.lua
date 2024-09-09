-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>vv", ":DFShowDataFrame<CR>")
vim.keymap.set("n", "<leader>vf", ":DFShowFile<CR>")
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>wa<cr><esc>", { desc = "Save File" })

vim.cmd("nnoremap <ScrollWheelRight> <Nop>")
vim.cmd("nnoremap <ScrollWheelLeft> <Nop>")
vim.cmd("nnoremap <S-ScrollWheelUp> <ScrollWheelRight>")
vim.cmd("nnoremap <S-ScrollWheelDown> <ScrollWheelLeft>")

local dap = require("dap")
vim.keymap.set("n", "<leader>dc", function()
  dap.continue()
  vim.cmd.Neotree("close")
end)
vim.keymap.set("n", "<leader>dl", function()
  dap.run_last()
  vim.cmd.Neotree("close")
end)
