local M = {
	"Exafunction/codeium.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		require("codeium").setup({})
	end,
}
-- check if ai_auto is true, set in init.lua
if vim.g.ai_auto then
	return M
else
	return {}
end
