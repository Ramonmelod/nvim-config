vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.g.mapleader = " "

vim.api.nvim_set_keymap("i","jk","<ESC>",{noremap = true}) -- the "i" option stands for the moment that this keymap will be active

vim.o.number = true -- it shows the number of the line in Neovim 

vim.o.mouse = "a" --allow the use of mouse in Neovim

require("packer-plugins")
--vim.bo.shiftwidth = 15

require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
