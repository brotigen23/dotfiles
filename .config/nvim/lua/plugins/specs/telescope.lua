vim.keymap.set("n", "<leader>sf", ":Telescope find_files<cr>")

return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' }
}
