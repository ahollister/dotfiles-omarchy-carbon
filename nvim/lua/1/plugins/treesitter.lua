local parsers = {
	"javascript",
	"typescript",
	"php",
	"html",
	"css",
	"lua",
	"vim",
	"markdown",
	"markdown_inline",
}

local filetypes = {
	"javascript",
	"typescript",
	"php",
	"html",
	"css",
	"lua",
	"vim",
	"markdown",
}

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter")

		-- Installation is asynchronous and a no-op for parsers already present.
		treesitter.install(parsers)

		vim.api.nvim_create_autocmd("FileType", {
			pattern = filetypes,
			callback = function(event)
				vim.treesitter.start(event.buf)
				vim.bo[event.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})

		-- Neovim 0.12 provides incremental node selection directly.
		vim.keymap.set("x", "v", function()
			vim.treesitter.select("parent")
		end, { desc = "Expand Treesitter selection" })

		vim.keymap.set("x", "V", function()
			vim.treesitter.select("child")
		end, { desc = "Shrink Treesitter selection" })
	end,
}
