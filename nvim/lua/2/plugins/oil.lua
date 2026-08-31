return {
	"stevearc/oil.nvim",
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			columns = {
				"icon",
				"permissions",
				"size",
				"mtime",
			},
			delete_to_trash = true,
			view_options = {
				show_hidden = true,
			},
		})
	end,
	lazy = false,
}
