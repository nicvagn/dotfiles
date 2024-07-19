local M = {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
		"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
	},
	init = function()
		vim.g.barbar_auto_setup = false
	end,
	keys = {
		{ "<A-,>", "<cmd>BufferPrevious<CR>" },
		{ "<A-.>", "<cmd>BufferNext<CR>" },
		{ "<A-<>", "<cmd>BufferMovePrevious<CR>" },
		{ "<A->>", "<cmd>BufferMoveNext<CR>" },
		{ "<A-c>", "<cmd>BufferClose<CR>" },
		{ "<A-f>", "<cmd>BufferPick<CR>" },
	},
	event = "BufEnter",
}

M.config = function()
	require("barbar").setup({
		icons = {
			button = false,
		},
	})
end

return M
