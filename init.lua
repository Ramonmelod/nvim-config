vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
vim.g.mapleader = " "
vim.o.number = true -- it shows the number of the line in Neovim 

vim.o.mouse = "a" --allow the use of mouse in Neovim

vim.api.nvim_set_keymap("i","jk","<ESC>",{noremap = true}) -- the "i" option stands for the moment that this keymap will be active
vim.api.nvim_set_keymap("n", "<leader>j", ":NvimTreeToggle<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>l", ":Telescope find_files<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "r", ":redo<CR>", { noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<leader>k", ":ToggleTerm 0 size=60 direction=vertical<CR>", { noremap = true, silent = true}) -- it opens the vert. terminal number 0
vim.api.nvim_set_keymap("n", "<leader>1", ":ToggleTerm 1 size=60 direction=vertical<CR>", { noremap = true, silent = true}) -- it opens the vert. terminal number 1
vim.api.nvim_set_keymap("n", "<leader>2", ":ToggleTerm 2 size=60 direction=vertical<CR>", { noremap = true, silent = true}) -- it opens the vert. terminal number 2
vim.api.nvim_set_keymap("n", "<leader>3", ":ToggleTerm 3 size=60 direction=vertical<CR>", { noremap = true, silent = true}) -- it opens the vert. terminal number 3
vim.api.nvim_set_keymap("n", "<leader>4", ":ToggleTerm 4 size=60 direction=vertical<CR>", { noremap = true, silent = true}) -- it opens the vert. terminal number 4
vim.api.nvim_set_keymap("n", "<leader>5", ":ToggleTerm 5 size=60 direction=vertical<CR>", { noremap = true, silent = true}) -- it opens the vert. terminal number 5
vim.api.nvim_set_keymap("n", "<leader>6", ":ToggleTerm 6 size=60 direction=vertical<CR>", { noremap = true, silent = true}) -- it opens the vert. terminal number 6

vim.api.nvim_set_keymap("n", "<C-j>", ":ToggleTerm 0 size=15 direction=horizontal<CR>", { noremap = true, silent = true}) -- it opens the horizon. terminal number 0
vim.api.nvim_set_keymap("n", "<C-k>", ":ToggleTerm 1 size=15 direction=horizontal<CR>", { noremap = true, silent = true}) -- it opens the horizon. terminal number 1
vim.api.nvim_set_keymap("n", "<C-l>", ":ToggleTerm 2 size=15 direction=horizontal<CR>", { noremap = true, silent = true}) -- it opens the horizon. terminal number 2
vim.api.nvim_set_keymap("n", "<C-i>", ":ToggleTerm 3 size=15 direction=horizontal<CR>", { noremap = true, silent = true}) -- it opens the horizon. terminal number 3

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('n', '<leader>w', [[<Cmd>wincmd k<CR>]], opts) -- switch to the top terminal
  vim.keymap.set('n', '<leader>s', [[<Cmd>wincmd j<CR>]], opts) -- switch to the bottom terminal
  vim.keymap.set('n', '<leader>d', [[<Cmd>wincmd l<CR>]], opts) -- switch to the right terminal
  vim.keymap.set('n', '<leader>a', [[<Cmd>wincmd h<CR>]], opts) -- switch to the left terminal
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
require("packer-plugins")
--vim.bo.shiftwidth = 15

require('lualine').setup{ 
    options = {
    icons_enabled = true,
    theme = 'everforest', -- exemples of other themes: ayu_dark, everforest, powerline_dark, powerline, seoul256, Tomorrow, codedark 
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    }

}}

-- nvim-tree

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

require('refactoring').setup()


-- telescope
require('telescope').setup{
  pickers = {
     find_files = {
      theme = "dropdown", -- Use the theme "dropdown" for this picker
      previewer = false, -- desable previewer for this picker
    }
  },
  }

 require("toggleterm").setup{}
