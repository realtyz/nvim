local packer = require("packer")
packer.startup({
  function(use)
    use 'wbthomason/packer.nvim'
    -- nvim-tree, sider
    use({ "kyazdani42/nvim-tree.lua", 
          requires = "kyazdani42/nvim-web-devicons" 
        })
    -- bufferline, top bar
    use({ "akinsho/bufferline.nvim", 
          requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }
        })
    -- lualine, bottom bar
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")
    -- telescope
    use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
    -- dashboard-nvim
    use 'glepnir/dashboard-nvim'
    -- projecy
    use 'ahmedkhalf/project.nvim'
    -- themes
    use 'folke/tokyonight.nvim'
    use({ "ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" } })
  end,
  config = {
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "single" })
        end,
    },
  },
})
