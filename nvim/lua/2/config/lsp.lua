vim.lsp.enable({
	"lua-language-server",
	"ts_ls",
	"intelephense",
})

-- On lsp attach
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function()
		-- Diagnostics config
		vim.diagnostic.config({
			virtual_text = true,
			jump = {
				float = true,
				wrap = true,
			},
		})
	end,
})
