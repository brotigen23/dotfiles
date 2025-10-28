return {
	cmd = { 'lua-language-server' },
	-- Filetypes to automatically attach to.
	filetypes = { 'lua' },
	-- Sets the "workspace" to the directory where any of these files is found.
	-- Files that share a root directory will reuse the LSP server connection.
	-- Nested lists indicate equal priority, see |vim.lsp.Config|.
	root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
	-- Specific settings to send to the server. The schema is server-defined.
	-- Example: https://raw.githubusercontent.com/LuaLS/vscode-lua/master/setting/schema.json
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT", -- Neovim использует LuaJIT
			},
			diagnostics = {
				globals = { "vim" }, -- 👈 сообщаем, что 'vim' — глобальная переменная
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true), -- 👈 подключаем Neovim runtime
				checkThirdParty = false,               -- отключает лишние предупреждения о "third party"
			},
			telemetry = {
				enable = false,
			},
		},
	},
}
