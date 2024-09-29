-- for keymap
L_DVORAK = false

-- AI auto complete
vim.g.ai_auto = false

-- providers
vim.g.python3_host_prog = "/usr/bin/python3"

-- little longer <leader> time
vim.g.timeoutlen = 1800

-- utils
require("utils.cspell") -- spelling
require("utils.path") -- path utils like getting rot dir of a git repo

-- core
require("core.colourscheme")
require("core.options")
require("core.keymaps")
require("core.autocmd")
require("core.lazy")
require("core.lualine-config")
require("core.normalcmds")
require("core.cmp-src") -- dictionary

-- TODO: MAKE LSP CONFIG MORE GOOD
-- require("core.lsp") broken, I forgot to include and did my own lsp's in the bottom of this file
-- language servers
local lsp_conf = require("lspconfig")

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp_conf.cssls.setup({
	capabilities = capabilities,
})

lsp_conf.jedi_language_server.setup({}) -- python

lsp_conf.pylsp.setup({}) -- python

lsp_conf.clangd.setup({}) -- c++

lsp_conf.cmake.setup({}) -- cmake

lsp_conf.html.setup({}) -- html

lsp_conf.ts_ls.setup({}) -- type script
