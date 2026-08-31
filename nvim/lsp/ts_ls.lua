---@type vim.lsp.Config

local capabilities = require("blink.cmp").get_lsp_capabilities()

return {
	capabilities = capabilities,
		cmd = { "typescript-language-server", "--stdio" },
		filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
		root_markers = {
			"package.json",
			"tsconfig.json",
			"jsconfig.json",
			".git",
		},
}
