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
-- Black -- I gave up
-- vim.keymap.set('n', '<C-q>', vim.cmd("call Black()"))
vim.keymap.set('n', 'd', 'h')
vim.keymap.set('n', 't', 'j')
vim.keymap.set('n', 'h', 'k')
vim.keymap.set('n', 'e', 'l')
-- switch cc an dd
vim.keymap.set('n', 'cc', 'dd')
-- switch c and d

-- switching buffers with F keys
vim.keymap.set('n', '<F1>', '<Cmd>bp<CR>')
vim.keymap.set('!', '<F1>', '<Cmd>bp<CR>')
vim.keymap.set('n','<F2>', '<Cmd>bn<CR>')
vim.keymap.set('!', '<F2>', '<Cmd>bn<CR>')
-- toggle nvim tree with F3 
vim.keymap.set('n','<F3>', '<Cmd>NvimTreeToggle<CR>')
vim.keymap.set('!', '<F3>', '<Cmd>NvimTreeToggle<CR>')



-- visual and select mode  
vim.keymap.set('v', 'd', 'h')
vim.keymap.set('v', 't', 'j')
vim.keymap.set('v', 'h', 'k')
vim.keymap.set('v', 'e', 'l')

vim.keymap.set('n', 'c', 'd')

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
