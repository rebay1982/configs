local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy requires that we set the leader key remap here.
require('rbaydoun/remap')

return require('lazy').setup({
	defaults = {
		lazy = false,
		version = nil,
	},

	'nvim-treesitter/nvim-treesitter',
	'preservim/nerdtree',
--	use {
--		'ryanoasis/vim-devicons',
--		requires = { {'preservim/nerdtree'} }
--	}
	'airblade/vim-gitgutter',

--	use {'mfussenegger/nvim-lint'}

--	use {
--  	"nvim-neo-tree/neo-tree.nvim",
--    	branch = "v3.x",
--    	requires = { 
--      	"nvim-lua/plenary.nvim",
--      	"MunifTanjim/nui.nvim",
--    	}
--  }
  {
		'nvim-telescope/telescope.nvim',
		dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  {
		'arcticicestudio/nord-vim',
		config = function()
			vim.cmd('colorscheme nord')
		end
	},
})
