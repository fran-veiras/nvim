local status, packer = pcall(require, 'packer_init')

if (not status) then
  print("Packer is not installed")
  return
end

packer.startup(function()
  local use = Packer.use
  use 'wbthomason/packer.nvim'
  use 'nvim-lualine/lualine.nvim'
  use {
  	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use 'hrsh7th/cmp-nvim-lsp'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
    use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, etc.
  use 'MunifTanjim/prettier.nvim' -- prettier plugin for neovim

  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use 'windwp/nvim-ts-autotag'
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'kyazdani42/nvim-web-devicons'
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  use 'norcalli/nvim-colorizer.lua'
  use 'kyazdani42/nvim-tree.lua' -- tree search bar
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
        local saga = require("lspsaga")

    end,
  })
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'
  use ({"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end})
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "LinArcX/telescope-env.nvim" }
  use 'simrat39/rust-tools.nvim'


  -- theme 
  -- use 'marko-cerovac/material.nvim'
  use 'navarasu/onedark.nvim'

  -- comments 
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
end)
