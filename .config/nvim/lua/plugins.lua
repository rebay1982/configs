-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use {'wbthomason/packer.nvim'}

  use {
		'nvim-telescope/telescope.nvim',
		requires = { {'nvim-lua/plenary.nvim'} }
  }

	use {
		'nvim-treesitter/nvim-treesitter',
--		run = ':TSUpdate'	
	}

  use {
		'arcticicestudio/nord-vim',
		config = function()
			vim.cmd('colorscheme nord')
		end
	}

	use {'preservim/nerdtree'}
--	use {
--		'ryanoasis/vim-devicons',
--		requires = { {'preservim/nerdtree'} }
--	}

	use {'airblade/vim-gitgutter'}
end)
