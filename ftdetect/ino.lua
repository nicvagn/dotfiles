vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*.ino",
    command = "setLocal shiftwidth=2; setlocal tabstop=2",
})
