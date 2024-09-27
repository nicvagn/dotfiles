local opts = {
	noremap = true, -- non-recursive
}
-- map leader to <Space>
vim.keymap.set("n", " ", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "
-------------------------
-- all modes != normal --
-------------------------

-- switching buffers with F keys
vim.keymap.set("!", "<F1>", "<Cmd>bp<CR>")
vim.keymap.set("!", "<F2>", "<Cmd>bn<CR>")
-- toggle nvim tree with F3
vim.keymap.set("!", "<F3>", "<Cmd>NvimTreeToggle<CR>")
-- save with F9
vim.keymap.set("!", "<F9>", "<Cmd>w<CR>")
-- Close Buffer with with f10
vim.keymap.set("!", "<F10>", "<Cmd>x<CR>")

-----------------
-- normal mode --
-----------------
-- switching buffers with F keys
vim.keymap.set("n", "<F1>", "<Cmd>bp<CR>")
vim.keymap.set("n", "<F2>", "<Cmd>bn<CR>")
-- toggle nvim tree with F3
vim.keymap.set("n", "<F3>", "<Cmd>NvimTreeToggle<CR>")
-- save with F9
vim.keymap.set("n", "<F9>", "<Cmd>w<CR>")
-- Close Buffer with with f10
vim.keymap.set("n", "<F10>", "<Cmd>x<CR>")

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- <leader> stuff --
-- add word to cspell dict
vim.keymap.set(
	"n",
	"<leader>aw",
	"<cmd>lua require('utils.cspell').add_word_to_c_spell_dictionary()<CR>",
	{ noremap = true, silent = true, desc = "Add unknown word to cspell dictionary" }
)

vim.keymap.set("n", "<leader>bc", "<Cmd>BufferClose<CR>")
vim.keymap.set("n", "<leader>q", "<Cmd>q<CR>")
vim.keymap.set("n", "<leader>x", "<Cmd>x<CR>")
vim.keymap.set("n", "<leader>w", "<Cmd>w<CR>")
vim.keymap.set("n", "<leader>n", "<Cmd>@:<CR>")
-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- l-dvorak area
if L_DVORAK then
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
