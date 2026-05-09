vim.lsp.config("pylsp", {
	settings = {
		pylsp = {
      plugins = {
        pycodestyle = {
          maxLineLength = 120,
        },
        flake8 = {
          maxLineLength = 120,
        },
        pylint = {
          maxLineLength = 120,
        },
        black = { enabled = true },  -- Optional: auto-format to 120
      },
		},
	},
})
vim.lsp.enable("pylsp")
