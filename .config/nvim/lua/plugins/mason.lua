return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "gopls", "pylsp" },
			automatic_installation = true,
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},
}
