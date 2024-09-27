vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*.css",
	command = "setlocal syntax=css tabstop=2 shiftwidth=2 softtabstop=2",
})
