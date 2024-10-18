return {
	"akinsho/toggleterm.nvim",
	opt = {
		size = 20,
		hide_numbers = true,
		autochdir = false,
		start_in_insert = true,
		insert_mappings = true,
		direction = "float",
		close_on_exit = true,
		shell = vim.o.shell,
		auto_scroll = true,
	},
	config = function ()
		require("toggleterm").setup {}
	end
}
