return {
	{
		"mason-org/mason.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"mason-org/mason-lspconfig.nvim",
		},

		opts = {},
		config = function()
			require("mason").setup()

			require("mason-lspconfig").setup({
				ensure_installed = {"gopls"},
				automatic_installation = true,
			})

			vim.lsp.enable("gopls")
		end,
	},
}
