return {
	"preservim/nerdtree",

	config = function()
		vim.keymap.set("n", "<leader>n", vim.cmd.NERDTreeFocus)
		vim.keymap.set("n", "<leader>nt", vim.cmd.NERDTreeToggle)
	end,
}
