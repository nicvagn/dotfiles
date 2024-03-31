local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-----------------------------

require('lazy').setup("plugins"(

return {
    
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!:).
        run = "make install_jsregexp"
    }
    { 'saadparwaiz1/cmp_luasnip' } 
    { 'neovim/nvim-lspconfig' }
    { 'hrsh7th/nvim-cmp', config = [[require('config.nvim-cmp')]] }    
    { 'hrsh7th/cmp-nvim-lsp'} 
    { 'hrsh7th/cmp-buffer'}        -- buffer auto-completion
    { 'hrsh7th/cmp-path' }          -- path auto-completion
    { 'hrsh7th/cmp-cmdline'}       -- cmdline auto-completion
    'karb94/neoscroll.nvim' -- smoth scroll

    { 'nvim-lualine/lualine.nvim' } -- lower status line 
    -- bufferline
    {'akinsho/bufferline.nvim', tag = "*", dependancies = 'nvim-tree/nvim-web-devicons'}

    { 'nvim-telescope/telescope.nvim' }
    { 'nvim-tree/nvim-web-devicons' }

    'yorickpeterse/happy_hacking.vim' -- colour scheme

    { -- "file explorer"
      'nvim-tree/nvim-tree.lua',
      dependancies = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
    }
    -- programming -- programming -- programming --
    -- context for programming (not working ?)
    { 'nvim-treesitter/nvim-treesitter-context' }
    -- python black formatter
    --use { 'averms/black-nvim' }


    -- markdown support
    { 'preservim/vim-markdown' }
}
