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
opt.listchars = "tab:» ,trail:-,nbsp:+,eol:¬"

opt.clipboard = "unnamedplus"

opt.winborder = 'rounded'
