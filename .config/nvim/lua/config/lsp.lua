vim.lsp.enable({
	-- INFO: base
	"lua_ls",

	-- INFO: backend
	"gopls",

	-- INFO: frontend
	"astro",
	"css_variables",
	"cssls",
	"cssmodules_ls",
})

-- красивый ui для диагностики ошибок, варнингов и тд
vim.diagnostic.config({
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
			[vim.diagnostic.severity.ERROR] = "", -- "󰅚 ",
			[vim.diagnostic.severity.WARN] = "", -- "󰀪 ",
			[vim.diagnostic.severity.INFO] = "", -- "󰋽 ",
			[vim.diagnostic.severity.HINT] = "", -- "󰌶 ",
		},
		numhl = {
			[vim.diagnostic.severity.ERROR] = "ErrorMsg",
			[vim.diagnostic.severity.WARN] = "WarningMsg",
		},
	},
})

-- добавление своих горячих клавиш при аттачменте лсп клиента
vim.api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client and client:supports_method(vim.lsp.protocol.Methods.textDocument_completion) then
			-- autocomplete
			vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
			vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
			vim.keymap.set('i', '<C-Space>', function()
				vim.lsp.completion.get()
			end)

			-- format
			vim.keymap.set("n", "<leader>f", function()
				vim.lsp.buf.format({ async = true })
			end, { buffer = ev.buf, desc = "LSP Format buffer" })

			local opts = { noremap = true, silent = true, buffer = ev.buf }
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
			vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
		end
	end,
})
