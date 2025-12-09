return require('packer').startup(function(use)
use 'wbthomason/packer.nvim'
use 'neovim/nvim-lspconfig'
use 'nvim-treesitter/nvim-treesitter'

use {
  'hrsh7th/nvim-cmp',
  requires = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path'
  },
  'nvim-tree/nvim-web-devicons',
  'nvim-tree/nvim-tree.lua',
  requires = {
  'nvim-tree/nvim-web-devicons',
  }
}

end)

