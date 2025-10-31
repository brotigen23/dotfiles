return {
	"goolord/alpha-nvim",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- ========================
		-- Лого (ASCII)
		-- ========================
		dashboard.section.header.val = {
			"███╗   ██╗███████╗ ██████╗ ██╗   ██╗",
			"████╗  ██║██╔════╝██╔═══██╗██║   ██║",
			"██╔██╗ ██║█████╗  ██║   ██║██║   ██║",
			"██║╚██╗██║██╔══╝  ██║   ██║██║   ██║",
			"██║ ╚████║███████╗╚██████╔╝╚██████╔╝",
			"╚═╝  ╚═══╝╚══════╝ ╚═════╝  ╚═════╝",
		}

		-- ========================
		-- Кнопки / горячие клавиши
		-- ========================
		dashboard.section.buttons.val = {
			--dashboard.button("c", "  Config", ":lua require('nvim-tree.api').tree.open({ path = vim.fn.stdpath('config') })<CR>"),

			dashboard.button(
				"c",
				"  Config",
				":cd " ..
				vim.fn.stdpath("config") ..
				" | lua require('nvim-tree.api').tree.open({ path = vim.fn.stdpath('config') })<CR>"
			),
			dashboard.button("p", "  Projects", ":NeovimProjectDiscover<CR>"),
			dashboard.button("f", "  New file", ":ene <BAR> startinsert<CR>"),
			dashboard.button("r", "  Old files", ":Telescope oldfiles<CR>"),
			dashboard.button("q", "󰿅 Exit", ":qa<CR>"),
		}

		-- Цвет
		dashboard.section.header.opts.hl = "Include"
		dashboard.section.buttons.opts.hl = "Keyword"

		dashboard.opts.opts.noautocmd = true

		-- ========================
		-- Setup Alpha
		-- ========================
		alpha.setup(dashboard.opts)
	end,
}


--return {
--	"goolord/alpha-nvim",
--	-- dependencies = { 'echasnovski/mini.icons' },
--	dependencies = { 'nvim-tree/nvim-web-devicons' },
--	config = function()
--		local startify = require("alpha.themes.startify")
--		-- available: devicons, mini, default is mini
--		-- if provider not loaded and enabled is true, it will try to use another provider
--		startify.file_icons.provider = "devicons"
--		require("alpha").setup(require("alpha.themes.dashboard").config)
--		--require("alpha").setup(
--		--  startify.config
--		--)
--	end,
--}
