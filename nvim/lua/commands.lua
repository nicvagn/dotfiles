-- custom vim commands

--vim.cmd [[
--    command Tree :NvimTreeOpen
--    ]]

vim.api.nvim_create_user_command('To', ':NvimTreeOpen', { })
vim.api.nvim_create_user_command('Tc', ':NvimTreeClose', {})
