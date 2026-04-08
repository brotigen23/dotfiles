local options = {
	sections = {
		lualine_c = { 'filename', 'lsp_status' },
	}
}

vim.pack.add({ 'https://github.com/nvim-lualine/lualine.nvim' })
require('lualine').setup(options)
