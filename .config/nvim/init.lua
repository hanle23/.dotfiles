local vim = vim
local Plug = vim.fn["plug#"]

vim.call('plug#begin')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', {['tag'] = '0.1.8'})
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('catppuccin/nvim', {['as'] = 'catppuccin'})
vim.call('plug#end')

vim.g.loaded_perl_provider = 0
require'lspconfig'.jedi_language_server.setup{}
require'lspconfig'.jsonls.setup{}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files'})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep'})
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers'})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags'})
vim.cmd [[colorscheme catppuccin-mocha]]
vim.o.termguicolors = True
