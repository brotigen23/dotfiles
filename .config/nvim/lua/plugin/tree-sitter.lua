local options = {
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  -- install_dir = vim.fn.stdpath('data') .. '/site'
}
local languages = {
	'lua',
}

vim.pack.add({'https://github.com/romus204/tree-sitter-manager.nvim'})
require('tree-sitter-manager').setup({})
-- require('nvim-treesitter').setup(options)
-- require('nvim-treesitter').install(languages)
