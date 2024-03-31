local opts = { 
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-------------
-----nrv-----
-------------

----------------
-- normal mode--
----------------

-- switching buffers with F keys
vim.keymap.set('n', '<F1>', '<Cmd>bp<CR>')
vim.keymap.set('!', '<F1>', '<Cmd>bp<CR>')
vim.keymap.set('n','<F2>', '<Cmd>bn<CR>')
vim.keymap.set('!', '<F2>', '<Cmd>bn<CR>')
-- toggle nvim tree with F3 
vim.keymap.set('n','<F3>', '<Cmd>NvimTreeToggle<CR>')
vim.keymap.set('!', '<F3>', '<Cmd>NvimTreeToggle<CR>')

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
