vim.g.mapleader = " "

vim.api.nvim_set_keymap("i","jk","<ESC>",{noremap = true}) -- the "i" option stands for the moment that this keymap will be active

vim.o.number = true

vim.o.mouse = "a"

require("packer-plugins")
--vim.bo.shiftwidth = 15 
