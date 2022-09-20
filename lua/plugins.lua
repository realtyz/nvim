require('packer').startup({
  function(use)
    use 'wbthomason/packer.nvim'
    -- files explorer
    use {
			'kyazdani42/nvim-tree.lua',
			requires = 'kyazdani42/nvim-web-devicons'
        }
    -- top bar
    use {
			"akinsho/bufferline.nvim",
			requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }
        }
    -- bottom bar
    use {
			"nvim-lualine/lualine.nvim",
			requires = { "kyazdani42/nvim-web-devicons" }
		}
    use 'arkav/lualine-lsp-progress'
    -- files search
    use {
			'nvim-telescope/telescope.nvim',
			requires = { "nvim-lua/plenary.nvim" }
		}
    -- welcome page
    use 'glepnir/dashboard-nvim'
    -- project
    use 'ahmedkhalf/project.nvim'
    -- syntax highlight
    use {
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate"
		}
	-- lsp
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	-- code completion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
	use 'hrsh7th/cmp-buffer' -- { name = 'buffer' },
	use 'hrsh7th/cmp-path' -- { name = 'path' }
	use 'hrsh7th/cmp-cmdline' -- { name = 'cmdline' }
	use 'rafamadriz/friendly-snippets'
	-- themes
    use 'folke/tokyonight.nvim'
    use {
			"ellisonleao/gruvbox.nvim",
			requires = { "rktjmp/lush.nvim" }
		}
  end,
  config = {
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
    },
  },
})
