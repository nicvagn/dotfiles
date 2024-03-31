return {
    
    {
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
    },    
    {"nvim-tree/nvim-tree.lua",
        lazy = false,
        version = "*",
        dependencies = { { "nvim-tree/nvim-web-devicons" } },
        opts = {
        sort_by = "case_sensitive",
        renderer = {
        group_empty = true,
        special_files = {},
	},
        actions  = { open_file = { quit_on_open = false } },
        filters  = { dotfiles = false, git_ignored = false, custom = { "^.DS_Store$", "^\\.git$" } },
        git = { enable = true, ignore = true, timeout = 500 },
	},
        config = function(_, opts)
        require("nvim-tree").setup(opts)
        end
	},

    {"nvim-treesitter/nvim-treesitter-context"},
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    }
}
