local M = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
}
M.config = function()
	require("nvim-treesitter.configs").setup({
		-- A list of parser names, or "all"
		ensure_installed = { "c", "lua", "go", "bash", "python", "html", "javascript", "json" },
		sync_install = false,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		--indent = { enable = true }
	})
end

return M
