vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.ino",
	callback = function()
		vim.cmd([[setlocal shiftwidth=2
        "setlocal tabstop=2")]])
	end,
})
