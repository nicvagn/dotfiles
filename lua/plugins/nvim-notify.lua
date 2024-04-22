local M = {
	"rcarriga/nvim-notify",
}

M.config = function()
	local notify = require("notify")

	-- dismiss the notification with <ESC>
	vim.keymap.set("n", "<ESC>", ":lua require('notify').dismiss()<CR>", { silent = true })

	notify.setup({
		background_colour = "#ba662a",
		timeout = 5000,
		top_down = false,
	})

	vim.notify = notify
end

return M
