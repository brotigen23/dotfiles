return {
	'nvim-treesitter/nvim-treesitter',
	config = function()
		require('nvim-treesitter.configs').setup({
			ensure_installed = { "lua", "bash", "astro", "css", "scss" }, -- языки, которые хотим всегда устанавливать
			highlight = { enable = true },                       -- включаем подсветку синтаксиса
			indent = { enable = true },                          -- включаем авто-отступы
		})
	end
}
