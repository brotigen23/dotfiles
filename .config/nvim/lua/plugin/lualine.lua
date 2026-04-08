local options= {
	sections ={
		lualine_c = {'lsp_status', 'filename'},
	}
}

vim.pack.add({'https://github.com/nvim-lualine/lualine.nvim'})
require('lualine').setup(options)
