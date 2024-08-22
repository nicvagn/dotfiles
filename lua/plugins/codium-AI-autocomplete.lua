local M = {
	"Exafunction/codeium.vim",
	event = "BufEnter",
	config = function()
		vim.keymap.set("i", "<Tab>", function()
			return vim.fn["codeium#AcceptNextWord"]()
		end, { expr = true, silent = true })
		vim.keymap.set("i", "<F5>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true, silent = true })
		vim.keymap.set("i", "<F6>", function()
			return vim.fn["codeium#Clear"]()
		end, { expr = true, silent = true })
		vim.keymap.set("i", "<F7>", function()
			return vim.fn["codeium#CycleCompletions"](1)
		end, { expr = true, silent = true })
		vim.keymap.set("i", "<F8>", function()
			return vim.fn["codeium#CycleCompletions"](-1)
		end, { expr = true, silent = true })
	end,
}

return M
