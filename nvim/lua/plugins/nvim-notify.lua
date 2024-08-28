local M = {
	"rcarriga/nvim-notify",
}

M.config = function()
	local notify = require("notify")

	-- dismiss the notification with <ESC>
	vim.keymap.set("n", "<ESC>", ":lua require('notify').dismiss()<CR>", { silent = true })

	notify.setup({
		background_colour = "#4a66aa",
		timeout = 10000,
		top_down = true,
	})

	vim.notify = notify
end

return M
