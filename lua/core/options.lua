local set = vim.opt

-- vim config
set.splitbelow = true -- open new vertical split bottom
set.splitright = true -- open new horizontal splits right
set.scrolloff = 8 -- Keep minimum x number of screen lines above and below the cursor
set.clipboard = "unnamedplus"
set.swapfile = true
set.hlsearch = true -- Highlight search results
set.incsearch = true -- As you type, match the currently typed word w/o pressing enter
-- set.textwidth = 96
-- Hint: use `:h <option>` to figure out the meaning if needed
set.completeopt = { "menu", "menuone", "noselect" }
set.mouse = "a" -- allow the mouse to be used in Nvim

-- Tab
set.tabstop = 4 -- number of visual spaces per TAB
set.softtabstop = 4 -- number of spacesin tab when editing
set.shiftwidth = 4 -- insert 4 spaces on a tab
set.expandtab = true -- tabs are spaces, mainly because of python
set.autoindent = true -- auto indent, nice fou programming
set.smartindent = true -- c lang smartindent
set.smarttab = true -- 4 spaces are deleted on backspace

-- UI config
set.cursorline = true
set.cursorcolumn = true
set.termguicolors = true
set.colorcolumn = "88" -- black default
set.number = true -- show absolute number
-- set.relativenumber = true       -- add numbers to each line on the left side

-- Searching
set.incsearch = true -- search as characters are entered
set.hlsearch = true -- do highlight matches
set.ignorecase = true -- ignore case in searches by default
set.smartcase = true -- but make it case sensitive if an uppercase is entered
set.completeopt = { "menu", "menuone", "noselect" }

-- Command
vim.cmd([[set showcmd]]) -- show command exed
-- nrv
-- vim.wo.wrap = false
