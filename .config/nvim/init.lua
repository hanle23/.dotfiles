local vim = vim
local Plug = vim.fn["plug#"]

vim.call('plug#begin')

Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', {['tag'] = '0.1.8'})
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})


vim.g.loaded_perl_provider = 0
require'lspconfig'.jedi_language_server.setup{}
require'lspconfig'.jsonls.setup{} 

vim.call('plug#end')
