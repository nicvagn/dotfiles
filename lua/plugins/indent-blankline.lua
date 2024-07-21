local M = {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = "BufReadPost",
}

M.config = function()
	require("ibl").setup({
		indent = {
			--char = "│",
			char = "╏",
		},
		scope = {
			enabled = true,
		},
	})
end

return M
