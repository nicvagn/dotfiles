vim.api.nvim_create_autocmd("BufReadPre", {
	pattern = "*.ts",
	callback = function()
		vim.cmd([[setlocal shiftwidth=2 tabstop=2]])
	end,
})
