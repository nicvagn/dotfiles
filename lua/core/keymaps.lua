local opts = {
	noremap = true, -- non-recursive
}
---------------
-- all modes --
---------------
---- Codeium ----
-- <F5>  - "codeium#Accept"]()
-- <F6>  - "codeium#Clear"]()
-- <F7>  - "codeium#CycleCompletions"](1)
-- <F8>  - "codeium#CycleCompletions"](-1)
-- switching buffers with F keys
vim.keymap.set("n", "<F1>", "<Cmd>bp<CR>")
vim.keymap.set("!", "<F1>", "<Cmd>bp<CR>")
vim.keymap.set("n", "<F2>", "<Cmd>bn<CR>")
vim.keymap.set("!", "<F2>", "<Cmd>bn<CR>")
-- toggle nvim tree with F3
vim.keymap.set("n", "<F3>", "<Cmd>NvimTreeToggle<CR>")
vim.keymap.set("!", "<F3>", "<Cmd>NvimTreeToggle<CR>")
-- save with F9
vim.keymap.set("n", "<F9>", "<Cmd>w<CR>")
vim.keymap.set("!", "<F9>", "<Cmd>w<CR>")
-- Close Buffer with with f10
vim.keymap.set("n", "<F10>", "<Cmd>BufferClose<CR>")
vim.keymap.set("!", "<F10>", "<Cmd>BufferClose<CR>")
-----------------
-- normal mode --
-----------------
-- Resize with arrows
-- delta: 2 lines
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- l-devorak area
if L_DEVORAK then
	-- normal mode
	vim.keymap.set("n", "d", "h")
	vim.keymap.set("n", "t", "j")
	vim.keymap.set("n", "h", "k")
	vim.keymap.set("n", "e", "l")
	-- switch cc an dd
	vim.keymap.set("n", "cc", "dd")
	-- switch c and d
	vim.keymap.set("n", "c", "d")
	-- visual and select mode
	vim.keymap.set("v", "d", "h")
	vim.keymap.set("v", "t", "j")
	vim.keymap.set("v", "h", "k")
	vim.keymap.set("v", "e", "l")
end

-- Codeium
vim.g.codeium_no_map_tab = 1 -- disable tab

vim.keymap.set("i", "<F5>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })
vim.keymap.set("i", "<F6>", function()
	return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true, silent = true })
vim.keymap.set("i", "<F7>", function()
	return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true, silent = true })
vim.keymap.set("i", "<F8>", function()
	return vim.fn["codeium#Clear"]()
end, { expr = true, silent = true })
