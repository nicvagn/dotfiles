vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*.json",
	command = "setlocal syntax=json tabstop=2 shiftwidth=2 softtabstop=2",
})
