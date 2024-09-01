-- for keymap
-- L_DEVORAK = true

-- providers
vim.g.python3_host_prog = "/usr/bin/python3"

require("core.colourscheme")
require("core.options")
require("core.keymaps")
require("core.autocmd")
require("core.lazy")
require("core.lualine-config")
require("core.normalcmds")
require("core.cmp-src") -- dictionary

-- language servers
require("lspconfig").jedi_language_server.setup({})
require("lspconfig").pylsp.setup({})
