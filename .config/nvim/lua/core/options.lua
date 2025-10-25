local opt = vim.opt

opt.number = true
opt.termguicolors = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.cursorline = true



-- Вывод непечатных символов
-- \t, пробелов и табов(trail) в конце строки, неразрывных пробелов(nbsp) и \n
vim.o.list = true
vim.o.listchars = "tab:» ,trail:-,nbsp:+,eol:¬"

