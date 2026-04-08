-- print('load core/init.lua')
local lsp = vim.lsp
lsp.enable({
	-- INFO: base
	"lua_ls",
	'bashls',

	-- INFO: backend
	"gopls",

	-- INFO: frontend
	"astro",
	"css_variables",
	"cssls",
	"cssmodules_ls"
})

-- Первый вариант



local api = vim.api
-- добавление своих горячих клавиш при аттачменте лсп клиента
api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = lsp.get_client_by_id(ev.data.client_id)
		if client and client:supports_method(lsp.protocol.Methods.textDocument_completion) then
			-- autocomplete
			-- vim.opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
			lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
			vim.keymap.set('i', '<C-Space>', function()
				lsp.completion.get()
			end)

			-- format
			vim.keymap.set("n", "<leader>f", function()
				lsp.buf.format({ async = true })
			end, { buffer = ev.buf, desc = "LSP Format buffer" })

			local opts = { noremap = true, silent = true, buffer = ev.buf }
			vim.keymap.set('n', 'gd', lsp.buf.definition, opts)
			vim.keymap.set('n', 'gr', lsp.buf.references, opts)
			vim.keymap.set('n', 'gi', lsp.buf.implementation, opts)
		end
	end,
})


