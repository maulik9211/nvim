-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config=function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })
  
  use('nvim-treesitter/nvim-treesitter', {run= ':TSUpdate'})
  use('mbbill/undotree')


  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
}
}


use {
    'nvim-tree/nvim-tree.lua',
    requires = {
        'nvim-tree/nvim-web-devicons', -- optional
    },
}

use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
use {"moll/vim-bbye"}

use {"lukas-reineke/indent-blankline.nvim"}

use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}

use {'dsznajder/vscode-es7-javascript-react-snippets',
    run = 'yarn install --frozen-lockfile && yarn compile'
}

-- nvim v0.7.2
use({
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    requires = {
        "nvim-lua/plenary.nvim",
    },
})

end)
