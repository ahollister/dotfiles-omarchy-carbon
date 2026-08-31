-- TODO: Test thing
return {
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			picker = {},
			words = {
				enabled = true,
				modes = { "n" },
			},
			quickfile = { enabled = true },
			statuscolumn = { enabled = true },
		},
	},
}
