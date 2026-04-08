local opt = vim.opt

opt.number = true
opt.termguicolors = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.cursorline = true
opt.expandtab = true
opt.relativenumber = true
-- Вывод непечатных символов
-- \t, пробелов и табов(trail) в конце строки, неразрывных пробелов(nbsp) и \n
opt.list = true
-- opt.listchars = "tab:⇥ ,trail:-,nbsp:+,eol:⏎"
opt.listchars = {
	space = '·',      -- Символ для пробела
	tab = '·┈',
	trail = '￮',
	multispace = '￮',
	lead = ' ',
	extends = '▶',
	precedes = '◀',
	nbsp = '‿',
	eol = '↴' -- Дополнительно: символ конца строки
}

opt.clipboard = "unnamedplus"

opt.winborder = 'rounded'

local o = vim.o

-- vim.o.complete = ".,o"
o.complete = "o,.,w,b,u"
o.completeopt = "fuzzy,menuone,noselect" -- добавить 'popup' для доков (иногда)
o.autocomplete = true

