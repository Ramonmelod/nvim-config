return require("packer").startup(function()

	-- packer can manage itself
	use "wbthomason/packer.nvim"

	-- colorscheme
	use "gruvbox-community/gruvbox"
	use {'nvim-tree/nvim-tree.lua',
	requires = {'nvim-tree/nvim-web-devicons', -- optional
  },
}
end)
