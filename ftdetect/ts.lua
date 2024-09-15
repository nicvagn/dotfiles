vim.api.nvim_create_autocmd("BufReadPre", {
	pattern = "*.ts",
	command = "setlocal syntax=css tabstop=2 shiftwidth=2 softtabstop=2",
})
