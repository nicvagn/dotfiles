vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.ino",
	command = "setlocal syntax=css tabstop=2 shiftwidth=2 softtabstop=2",
})
