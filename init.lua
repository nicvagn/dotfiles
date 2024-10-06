-- for keymap
L_DVORAK = true

-- AI auto complete
vim.g.ai_auto = false
-- providers
vim.g.python3_host_prog = "/usr/bin/python3"

if vim.g.VSCode then
	-- VSCode extension
	require("core.keymaps")
else
	-- ordinary Neovim
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
	require("core.lsp") -- lsp's
end
