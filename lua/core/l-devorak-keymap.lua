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

-- visual and select mode  
vim.keymap.set('v', 'd', 'h')
vim.keymap.set('v', 't', 'j')
vim.keymap.set('v', 'h', 'k')
vim.keymap.set('v', 'e', 'l')

vim.keymap.set('n', 'c', 'd')
