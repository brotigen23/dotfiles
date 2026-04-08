print('load core/init.lua')
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":w<cr>")
vim.keymap.set("n", "<leader>q", ":qa<cr>")
vim.keymap.set("n", "<leader>e", ":Explore<CR>")

local lsp = vim.lsp
local diagnostic = vim.diagnostic
local api = vim.api
local opt = vim.opt
local keymap = vim.keymap

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

-- добавление своих горячих клавиш при аттачменте лсп клиента
api.nvim_create_autocmd('LspAttach', {
	callback = function(ev)
		local client = lsp.get_client_by_id(ev.data.client_id)
		if client and client:supports_method(lsp.protocol.Methods.textDocument_completion) then
			-- autocomplete
			opt.completeopt = { 'menu', 'menuone', 'noinsert', 'fuzzy', 'popup' }
			lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
			keymap.set('i', '<C-Space>', function()
				lsp.completion.get()
			end)

			-- format
			keymap.set("n", "<leader>f", function()
				lsp.buf.format({ async = true })
			end, { buffer = ev.buf, desc = "LSP Format buffer" })

			local opts = { noremap = true, silent = true, buffer = ev.buf }
			keymap.set('n', 'gd', lsp.buf.definition, opts)
			keymap.set('n', 'gr', lsp.buf.references, opts)
			keymap.set('n', 'gi', lsp.buf.implementation, opts)
		end
	end,
})
local opt = vim.opt

opt.number = true
opt.termguicolors = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.cursorline = true
opt.relativenumber = true


-- Вывод непечатных символов
-- \t, пробелов и табов(trail) в конце строки, неразрывных пробелов(nbsp) и \n
opt.list = true
opt.listchars = "tab:⇥ ,trail:-,nbsp:+,eol:⏎"

opt.clipboard = "unnamedplus"

opt.winborder = 'rounded'
