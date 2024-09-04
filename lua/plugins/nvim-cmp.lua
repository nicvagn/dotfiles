local M = {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
		"uga-rosa/cmp-dictionary",
		"petertriho/cmp-git",
	},
}

M.config = function()
	local cmp = require("cmp")
	vim.opt.completeopt = { "menu", "menuone", "noselect" }

	local kind_icons = {
		-- https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance#basic-customisations
		Text = " ",
		Method = "󰆧",
		Function = "ƒ ",
		Constructor = " ",
		Field = "󰜢 ",
		Variable = " ",
		Constant = " ",
		Class = " ",
		Interface = "󰜰 ",
		Struct = " ",
		Enum = "了 ",
		EnumMember = " ",
		Module = "",
		Property = " ",
		Unit = " ",
		Value = "󰎠 ",
		Keyword = "󰌆 ",
		Snippet = " ",
		File = " ",
		Folder = " ",
		Color = " ",
	}

	cmp.setup({
		snippet = {
			expand = function(args)
				require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
			end,
		},
		window = {
			-- completion = cmp.config.window.bordered(),
			-- documentation = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<f5>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. First item autoselect.
			["<F6>"] = cmp.mapping.select_next_item(),
			["<F7>"] = cmp.mapping.select_prev_item(),
			["<F8>"] = cmp.mapping.abort(),
		}),
		sources = cmp.config.sources({
			{ name = "codeium" },
			{ name = "nvim_lsp" },
			{ name = "nvim_lua" },
			{ name = "luasnip" }, -- For luasnip users.
		}, {
			{ name = "buffer" },
			{ name = "dictionary", keyword_length = 2 },
			{ name = "path" },
		}),

		formatting = {
			format = function(entry, vim_item)
				-- Kind icons
				vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
				-- Source
				vim_item.menu = ({
					buffer = "[Buffer]",
					nvim_lsp = "[LSP]",
					luasnip = "[LuaSnip]",
					nvim_lua = "[NvimAPI]",
					path = "[Path]",
				})[entry.source.name]
				return vim_item
			end,
		},
	})

	-- Set configuration for specific filetype.
	cmp.setup.filetype("gitcommit", {
		sources = cmp.config.sources({
			{ name = "cmp_git" }, -- You can specify the `cmp_git` source if you were installed it.
		}, {
			{ name = "buffer" },
		}),
	})

	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({
			{ name = "path" },
		}, {
			{ name = "cmdline" },
		}),
	})
end

return M
