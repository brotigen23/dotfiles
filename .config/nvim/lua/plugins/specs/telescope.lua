vim.keymap.set("n", "<leader>sf", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>sg", ":Telescope live_grep<cr>")

return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		require('telescope').setup {
			defaults = {
				-- Игнорируем папки node_modules и python deps (например, .venv, venv)
				file_ignore_patterns = {
					"node_modules",
					"%.venv",
					"venv",
					"__pycache__",
					"%.git" -- часто удобно игнорировать git
				},
			},
		}
	end
}
