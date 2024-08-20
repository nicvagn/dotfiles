-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Hs splits window
vim.cmd("command Hs split")

-- Qa quit all
vim.cmd("command Qa quitall")

-- close buffer with :Bc
vim.cmd("command Bc BufferClose")
