-- language servers
local lsp_conf = require("lspconfig")

-- CSS
--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp_conf.cssls.setup({
	capabilities = capabilities,
}) -- CSS OUT

-- python lsp_conf.jedi_language_server.setup({})

lsp_conf.pylsp.setup({
	on_attach = custom_attach,
	settings = {
		pylsp = {
			plugins = {
				-- formatter options
				black = { enabled = false },
				autopep8 = { enabled = true },
				yapf = { enabled = false },
				-- linter options
				pylint = { enabled = true, executable = "pylint" },
				pyflakes = { enabled = false },
				pycodestyle = { enabled = false },
				-- type checker
				pylsp_mypy = { enabled = true },
				-- auto-completion options
				jedi_completion = { fuzzy = true },
				-- import sorting
				pyls_isort = { enabled = false },
			},
		},
	},
	flags = {
		debounce_text_changes = 200,
	},
	capabilities = capabilities,
})
-- python out

lsp_conf.clangd.setup({}) -- c++

lsp_conf.cmake.setup({}) -- cmake

lsp_conf.html.setup({}) -- html

lsp_conf.vtsls.setup({}) -- typescript
