vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*.html",
	command = "setlocal syntax=html tabstop=2 shiftwidth=2 softtabstop=2",
})
