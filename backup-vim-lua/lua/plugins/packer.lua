require('packer').startup(
  function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    }
    use 'windwp/nvim-autopairs'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'nvim-treesitter/nvim-treesitter'
    use 'kyazdani42/nvim-tree.lua'
    use 'feline-nvim/feline.nvim'
    use 'morhetz/gruvbox'
    use {
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons'
    }
    use 'christoomey/vim-tmux-navigator'
    use 'airblade/vim-gitgutter'
    use 'SirVer/ultisnips'
    use 'honza/vim-snippets'
    use 'junegunn/fzf'
    use 'junegunn/fzf.vim'
  end
)
