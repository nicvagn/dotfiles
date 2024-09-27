vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*.py",

	command = "set colorcolumn=79",
})
