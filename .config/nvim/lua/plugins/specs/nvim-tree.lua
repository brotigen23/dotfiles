vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	requires = { "nvim-tree/nvim-web-devicons" },

	cmd = { 'NvimTreeToggle', 'NvimTreeOpen' }, -- Загрузить при вызове этих команд

	config = function()
		require('nvim-tree').setup({
			sort_by = 'case_sensitive',
			view = {
				width = 30,
			},
		})
	end,
}
