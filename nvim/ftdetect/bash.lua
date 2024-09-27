vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.sh",
	command = "silent! 1s:.*:#!/usr/bin/env bash",
})
