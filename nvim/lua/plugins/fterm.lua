local M = {
	"numToStr/FTerm.nvim",
	keys = {
		{ "<F4>", "<cmd>lua require('FTerm').toggle()<CR>" },
		{ "<F4>", "<C-\\><C-n><cmd>lua require('FTerm').toggle()<CR>", mode = "t" },
	},
}

M.config = function()
	local fterm = require("FTerm")

	fterm.setup({
		border = "double",
		dimensions = {
			height = 0.9,
			width = 0.9,
		},
	})
end

return M
