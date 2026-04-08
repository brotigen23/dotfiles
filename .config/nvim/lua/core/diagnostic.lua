local diagnostic = vim.diagnostic
-- красивый ui для диагностики ошибок, варнингов и тд
diagnostic.config({
	-- virtual_lines = true,

	virtual_text = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	},
	signs = {
		text = {
			[diagnostic.severity.ERROR] = "", -- "󰅚 ",
			[diagnostic.severity.WARN] = "", -- "󰀪 ",
			[diagnostic.severity.INFO] = "", -- "󰋽 ",
			[diagnostic.severity.HINT] = "", -- "󰌶 ",
		},
		numhl = {
			[diagnostic.severity.ERROR] = "ErrorMsg",
			[diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})

