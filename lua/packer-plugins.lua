return require("packer").startup(function()

	-- packer can manage itself
	use "wbthomason/packer.nvim"

	-- colorscheme
	use "EdenEast/nightfox.nvim"
	-- file tree
	use {'nvim-tree/nvim-tree.lua',
	requires = {'nvim-tree/nvim-web-devicons', -- optional
                },
         }
        -- Status bar 
        use {'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
         }
        -- PrimeAgen refactoring  
	use {"ThePrimeagen/refactoring.nvim",
        requires = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-treesitter/nvim-treesitter"}
        }
        }
        -- telescope
	use {
         'nvim-telescope/telescope.nvim', tag = '0.1.6',
            -- or                            , branch = '0.1.x',
           requires = { {'nvim-lua/plenary.nvim'} }
            }
	 -- embedded terminal
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
             end}
 end)


