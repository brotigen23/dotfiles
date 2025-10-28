-- nvim/lsp/css_ls.lua
return {
	cmd = { "vscode-css-language-server", "--stdio" },
	filetypes = { "css", "scss", "less" },
	root_markers = { "package.json", "tsconfig.json" },
	settings = {
		css = {
			validate = true,
			lint = {
				unknownAtRules = "ignore", -- чтобы не ругался на Tailwind @apply, @layer и т.д.
			},
		},
		scss = { validate = true },
		less = { validate = true },
	},
}
