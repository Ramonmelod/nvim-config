vim.g.mapleader = " "

vim.api.nvim_set_keymap("i","jk","<ESC>",{noremap = true}) -- the "i" option stands for the moment that this keymap will be active

vim.o.number = true -- it shows the number of the line in Neovim 

vim.o.mouse = "a" --allow the use of mouse in Neovim

require("packer-plugins")
--vim.bo.shiftwidth = 15
